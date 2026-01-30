# Jacqui Chowles Psychology Website

Professional website for Jacqui Chowles, a counselling psychologist based in Roodepoort, South Africa.

**Live Site:** https://www.jacquichowles.com/  
**Deadline:** 14th February 2026

## Project Structure

```
/
├── website/          # Astro website (deliverable)
├── cortex/           # Strategic planning (Cortex agent)
├── ralph/            # Task execution (Ralph agent)
├── shared/           # Shared agent utilities
├── vendor/brain/     # Brain framework (development patterns)
└── docs/             # Project documentation
```

## Quick Start

### Build & Run Website

```bash
cd website/
npm install
npm run dev      # Development server
npm run build    # Production build
npm run preview  # Preview production build
```

### Development Workflow

The project uses a two-agent system:

- **Cortex** (Manager): Plans and breaks down tasks → `cortex/IMPLEMENTATION_PLAN.md`
- **Ralph** (Worker): Executes tasks → Runs from project root with `bash ralph/loop.sh`

### Key Files

- `cortex/THOUGHTS.md` - Current mission and strategic focus
- `cortex/IMPLEMENTATION_PLAN.md` - High-level task planning
- `ralph/IMPLEMENTATION_PLAN.md` - Ralph's working copy (synced from Cortex)
- `ralph/THUNK.md` - Completed tasks log

## Deployment

The site deploys automatically via:
- **GitHub Pages** (primary): Pushes to `main` branch
- **Netlify** (secondary): Configured with `website/netlify.toml`

## Client Requirements

- Keep ALL existing content (restructure, don't delete)
- Landing page: "overview without overload"
- Design: calm, inviting, professional (not overly feminine)
- Add Psychology Today verification badge
- Add in-person services alongside online offerings

## Tech Stack

- **Framework:** Astro (static site generator)
- **Styling:** Tailwind CSS
- **Hosting:** GitHub Pages / Netlify
- **Forms:** Formspree
- **Domain:** jacquichowles.com (client-managed DNS)

## License

Proprietary - © 2026 Jacqui Chowles
