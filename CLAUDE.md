# Jacqui Chowles Psychology Website

## Overview

Professional website for Jacqui Chowles, a counselling psychologist in Roodepoort, South Africa. Static site built with Astro and deployed to GitHub Pages / Netlify.

## Tech Stack

- Astro 5 (static site generator)
- Tailwind CSS 3
- Formspree (contact form)
- GitHub Pages (primary deploy) / Netlify (secondary)

## Commands

```bash
cd website
npm install
npm run dev          # Astro dev server
npm run build        # Production build
npm run preview      # Preview production build
```

## Architecture

```
website/             # Astro site (the deliverable)
  src/               # Pages, layouts, components
  public/            # Static assets
  astro.config.mjs
  netlify.toml
cortex/              # Strategic planning (Cortex agent)
ralph/               # Task execution (Ralph agent)
shared/              # Shared agent utilities
vendor/brain/        # Brain framework
docs/                # Project documentation
skills/              # Agent skills
```

## Conventions

- Deployment: pushes to `main` trigger GitHub Pages build
- Netlify configured as secondary via `website/netlify.toml`
- DNS managed by client (see `DNS_Setup_Instructions.md`)
- Markdownlint and pre-commit hooks configured
