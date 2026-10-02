// Checks the built site in dist/ (run `npm run build` first):
//   node --test tests/dist.test.mjs   (from website/)
// DIST may point at another build directory.
import { test } from 'node:test';
import assert from 'node:assert/strict';
import { createHash } from 'node:crypto';
import { existsSync, readFileSync, readdirSync, statSync } from 'node:fs';
import { join, dirname } from 'node:path';
import { fileURLToPath } from 'node:url';

const root = join(dirname(fileURLToPath(import.meta.url)), '..');
const dist = process.env.DIST ?? join(root, 'dist');

function walk(dir) {
  return readdirSync(dir).flatMap((name) => {
    const path = join(dir, name);
    return statSync(path).isDirectory() ? walk(path) : [path];
  });
}

const pages = walk(dist).filter((f) => f.endsWith('.html'));

test('dist contains built pages', () => {
  assert.ok(pages.length > 0, `no HTML found in ${dist}`);
});

test('every local href/src resolves to a built file', () => {
  const missing = [];
  for (const page of pages) {
    const html = readFileSync(page, 'utf8');
    for (const [, url] of html.matchAll(/(?:href|src)="(\/[^"#?]*)/g)) {
      const target = join(dist, decodeURIComponent(url));
      const ok =
        (existsSync(target) && statSync(target).isFile()) ||
        existsSync(join(target, 'index.html'));
      if (!ok) missing.push(`${page.slice(dist.length)} -> ${url}`);
    }
  }
  assert.deepEqual(missing, []);
});

test('every inline script is allowed by the CSP hashes in _headers', () => {
  const headers = readFileSync(join(root, 'public', '_headers'), 'utf8');
  const allowed = new Set(headers.match(/sha256-[A-Za-z0-9+/=]+/g) ?? []);
  const blocked = [];
  for (const page of pages) {
    const html = readFileSync(page, 'utf8');
    for (const [tag, body] of Array.from(html.matchAll(/<script\b([^>]*)>([\s\S]*?)<\/script>/g), (m) => [m[1], m[2]])) {
      if (/\bsrc=|application\/ld\+json/.test(tag)) continue;
      const hash = 'sha256-' + createHash('sha256').update(body).digest('base64');
      if (!allowed.has(hash)) blocked.push(`${page.slice(dist.length)} ${hash}`);
    }
  }
  assert.deepEqual(blocked, []);
});

test('script-src allows every host the Psychology Today verified seal loads from', () => {
  const headers = readFileSync(join(root, 'public', '_headers'), 'utf8');
  const scriptSrc = (headers.match(/script-src ([^;]*)/) ?? [, ''])[1].split(/\s+/);
  const external = new Set();
  for (const page of pages) {
    const html = readFileSync(page, 'utf8');
    for (const [, src] of html.matchAll(/<script\b[^>]*\bsrc="(https:\/\/[^"]+)"/g)) {
      external.add(new URL(src).origin);
      // verified-seal.js pulls its loader from CloudFront, then a JSONP call from www.psychologytoday.com.
      if (src.includes('verified-seal.js')) {
        external.add('https://d3mmydk2yvkj9n.cloudfront.net');
        external.add('https://www.psychologytoday.com');
      }
    }
  }
  assert.deepEqual([...external].filter((origin) => !scriptSrc.includes(origin)), []);
});

test('no inline event handler attributes (the CSP has no unsafe-hashes, so they never run)', () => {
  const handlers = [];
  for (const page of pages) {
    const html = readFileSync(page, 'utf8').replace(/<script\b[^>]*>[\s\S]*?<\/script>/g, '');
    for (const [tag] of html.matchAll(/<[a-zA-Z][^>]*\son[a-z]+\s*=[^>]*>/g)) {
      handlers.push(`${page.slice(dist.length)} ${tag.slice(0, 120)}`);
    }
  }
  assert.deepEqual(handlers, []);
});

test('internal page links use the trailing-slash URL, avoiding a redirect hop', () => {
  const unslashed = [];
  for (const page of pages) {
    const html = readFileSync(page, 'utf8');
    for (const [, path] of html.matchAll(/<a\b[^>]*\bhref="(\/[^"#?]*)/g)) {
      if (!path.endsWith('/') && !/\.[a-z0-9]+$/i.test(path)) unslashed.push(`${page.slice(dist.length)} -> ${path}`);
    }
  }
  assert.deepEqual(unslashed, []);
});
