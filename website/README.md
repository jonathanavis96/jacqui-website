# Jacqui Chowles Psychology Website

Professional website built with Astro and Tailwind CSS.

## Development

```bash
npm install           # Install dependencies
npm run dev           # Start dev server (http://localhost:4321)
npm run build         # Build for production
npm run preview       # Preview production build
```

## Project Structure

```
website/
├── src/
│   ├── components/   # Reusable Astro components
│   ├── layouts/      # Page layouts
│   ├── pages/        # Website pages (routing)
│   ├── scripts/      # Client-side JavaScript
│   └── styles/       # Global CSS
├── public/
│   ├── images/       # Static images (optimized)
│   ├── favicon.svg   # Site icon
│   ├── robots.txt    # Search engine directives
│   └── CNAME         # Custom domain config
└── dist/             # Build output (generated)
```

## Pages

- **Homepage** (`/`) - Hero, services overview, trust badges, CTA
- **About** (`/about`) - Jacqui's story, qualifications, approach
- **Services** (`/services`) - Detailed service offerings and pricing
- **Contact** (`/contact`) - Contact form, location, availability

## Key Features

- ✅ Mobile-responsive design
- ✅ Psychology Today verification badge
- ✅ HPCSA credentials display
- ✅ Formspree contact form integration
- ✅ SEO-optimized pages
- ✅ Fast static site generation

## Build Configuration

- **Node Version:** 18+ (20 recommended)
- **Output:** Static HTML (no server required)
- **Image Optimization:** Astro's built-in image optimization
- **CSS:** Tailwind CSS with custom theme

## Deployment

The site is automatically deployed on push to `main`:

- **GitHub Pages:** Primary hosting
- **Netlify:** Backup/preview deployments

### Manual Deployment

```bash
npm run build
# Upload dist/ folder to any static host
```

## Contact Form

Powered by Formspree. Form submissions go to the configured email address.

**Form ID:** Configured in `src/pages/contact.astro`

## Browser Support

- Chrome/Edge (last 2 versions)
- Firefox (last 2 versions)
- Safari (last 2 versions)
- Mobile browsers (iOS Safari, Chrome Android)

## License

Proprietary - © 2026 Jacqui Chowles
