import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';
import sitemap from '@astrojs/sitemap';

// https://astro.build/config
export default defineConfig({
  site: 'https://jacquichowles.com',
  base: '/',
  integrations: [
    tailwind(),
    sitemap({
      filter: (page) => !page.endsWith('/thanks/'),
    }),
  ],
  output: 'static',
  build: {
    inlineStylesheets: 'auto',
  },
  compressHTML: true,
});
