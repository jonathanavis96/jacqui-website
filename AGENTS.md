# Agent Guidance - Jacqui Howles Website

## Project Overview

Building a conversion-focused website for Jacqui Howles, a solo counselling psychologist.

**Deadline:** 14th February 2026
**Existing Site:** https://www.jacquichowles.com/
**Tech Stack:** Astro + Tailwind CSS + Netlify

## Quick Start

1. Read `THOUGHTS.md` for project goals
2. Read `NEURONS.md` for codebase structure
3. Check `IMPLEMENTATION_PLAN.md` for current tasks

## Validation Commands

```bash
# Build check
npm run build

# Preview (manual)
npm run preview

# Lint (if configured)
npm run lint
```

## Key Constraints

1. **Content preservation** - ALL existing content must be kept
2. **Design direction** - Calm, inviting, professional (not overly feminine)
3. **Trust markers** - HPCSA + Psychology Today badge required
4. **Mobile-first** - Responsive design essential
5. **Deadline** - Must ship before 14th Feb 2026

## File Structure

```
jacqui-website/
├── cortex/                 # Cortex manager layer
│   ├── AGENTS.md          # Cortex rules
│   ├── IMPLEMENTATION_PLAN.md  # Task source (Ralph syncs from here)
│   ├── THOUGHTS.md        # Strategic context
│   └── DECISIONS.md       # Architectural decisions
│
├── src/                    # Astro source (Ralph builds)
│   ├── pages/             # Page routes
│   ├── components/        # Reusable components
│   ├── layouts/           # Page layouts
│   └── styles/            # Global styles
│
├── public/                 # Static assets
│
├── PROMPT.md              # Ralph's instructions (protected)
├── IMPLEMENTATION_PLAN.md # Ralph's working copy
├── THUNK.md               # Completed tasks log
├── NEURONS.md             # Codebase map
├── loop.sh                # Ralph executor (protected)
├── verifier.sh            # AC checker (protected)
└── rules/AC.rules         # Verification rules (protected)
```

## Protected Files (hash-guarded)

- `PROMPT.md` + `.verify/prompt.sha256`
- `loop.sh` + `.verify/loop.sha256`
- `verifier.sh` + `.verify/verifier.sha256`
- `rules/AC.rules` + `.verify/ac.sha256`

## Brain Skills Reference

Website skills at: `~/code/brain/skills/domains/websites/`

| Phase | Skill |
|-------|-------|
| Discovery | `requirements-distiller.md` |
| Architecture | `section-composer.md`, `tech-stack-chooser.md` |
| Design | `design-direction.md`, `color-system.md` |
| Copywriting | `value-proposition.md`, `cta-optimizer.md` |
| QA | `acceptance-criteria.md`, `accessibility.md` |
| Launch | `deployment.md`, `finishing-pass.md` |

## Running Ralph

```bash
cd ~/code/jacqui-website
bash loop.sh                    # Single iteration
bash loop.sh --iterations 10    # Multiple iterations
bash loop.sh --dry-run          # Preview changes
```

## See Also

- `cortex/THOUGHTS.md` - Strategic goals
- `cortex/DECISIONS.md` - Architectural decisions
- `docs/` - Project documentation
