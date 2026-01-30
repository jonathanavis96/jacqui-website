# NEURONS - Jacqui Chowles Website Structure

Quick map of project structure. Update as codebase evolves.

---

## Project Structure

```text
jacqui-website/
├── website/                    # Astro website (deliverable)
│   ├── src/                   # Astro source code
│   │   ├── pages/            # Page routes
│   │   │   ├── index.astro   # Homepage
│   │   │   ├── about.astro   # About page
│   │   │   ├── services.astro # Services page
│   │   │   └── contact.astro # Contact page
│   │   │
│   │   ├── components/       # Reusable UI components
│   │   │   ├── Header.astro  # Site header/nav
│   │   │   ├── Footer.astro  # Site footer
│   │   │   ├── Hero.astro    # Hero section ✅
│   │   │   ├── ServiceCard.astro # Service preview card ✅
│   │   │   ├── TrustBadges.astro # HPCSA + Psychology Today ✅
│   │   │   ├── CTASection.astro  # Call-to-action section ✅
│   │   │   └── ContactForm.astro # Contact form
│   │   │
│   │   ├── layouts/          # Page layouts
│   │   │   └── BaseLayout.astro # Main layout wrapper
│   │   │
│   │   └── styles/           # Global styles
│   │       └── global.css    # Tailwind imports + custom
│   │
│   ├── public/               # Static assets
│   │   ├── images/          # Photos, logos
│   │   └── favicon.ico      # Site favicon
│   │
│   ├── dist/                # Build output (generated)
│   ├── astro.config.mjs     # Astro configuration
│   ├── tailwind.config.mjs  # Tailwind configuration
│   ├── package.json         # Dependencies
│   └── .gitignore           # Website-specific ignores
│
├── cortex/                   # Manager layer (Cortex)
│   ├── AGENTS.md            # Cortex operational rules
│   ├── CORTEX_SYSTEM_PROMPT.md # Cortex identity
│   ├── DECISIONS.md         # Architectural decisions
│   ├── IMPLEMENTATION_PLAN.md # Task source (Ralph syncs from here)
│   └── THOUGHTS.md          # Strategic context
│
├── ralph/                    # Worker layer (Ralph)
│   ├── AGENTS.md            # Ralph operational rules
│   ├── PROMPT.md            # Ralph system prompt (protected)
│   ├── IMPLEMENTATION_PLAN.md # Ralph's working task copy
│   ├── THUNK.md             # Completed tasks log
│   ├── NEURONS.md           # This file
│   ├── loop.sh              # Ralph executor (protected)
│   ├── verifier.sh          # AC checker (protected)
│   ├── init_verifier_baselines.sh # Initialize hash guards
│   ├── rules/               # Verification rules
│   │   └── AC.rules        # Acceptance criteria (protected)
│   └── .verify/            # Hash baselines
│
├── shared/                  # Shared utilities
├── vendor/brain/           # Brain framework
├── docs/                   # Project documentation
├── .github/workflows/      # GitHub Actions (deployment)
├── README.md               # Project overview
└── .gitignore              # Root-level ignores
```

## Page → Component Map

| Page | Key Components |
|------|----------------|
| Homepage ✅ | Hero, ServiceCard (×3), TrustBadges, "What I work with", CTASection |
| About ✅ | Bio section, Approach, Credentials, "What I work with", TrustBadges |
| Services ✅ | Online therapy, In-person therapy, Consultancy grid (×6 services) |
| Contact ✅ | ContactForm (Formspree), WhatsApp link, Email link, FAQ section |

## Data Flow

```text
cortex/IMPLEMENTATION_PLAN.md  →  (sync)  →  IMPLEMENTATION_PLAN.md
                                              ↓
                                         Ralph executes
                                              ↓
                                         THUNK.md (log)
                                              ↓
                                         Git commit
```

## Quick Navigation

| I need to... | Look at |
|--------------|---------|
| See current tasks | `ralph/IMPLEMENTATION_PLAN.md` |
| See completed work | `ralph/THUNK.md` |
| Understand goals | `cortex/THOUGHTS.md` |
| Check design decisions | `cortex/DECISIONS.md` |
| Find a component | `website/src/components/` |
| Edit page content | `website/src/pages/` |
| Add static assets | `website/public/` |
| Build the site | `cd website/ && npm run build` |

## External References

- **Brain skills:** `~/code/brain/skills/domains/websites/`
- **Existing site:** <https://www.jacquichowles.com/>
- **Project brief:** `~/code/brain/cortex/projects/jacqui-howles-website/PROJECT_BRIEF.md`

---

*Update this file when adding new directories or major components.*
