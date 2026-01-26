# AGENTS.md - Ralph Loop (Jacqui Howles Website)

## First Step: Read Project Context

**Before any task, read `cortex/THOUGHTS.md`** - it contains project goals and success criteria.

## Purpose

Ralph loop for Jacqui Howles Psychology Website. Runs PLAN/BUILD cycles to build and maintain the website.

**Deadline:** 14th February 2026
**Existing Site:** https://www.jacquichowles.com/
**Tech Stack:** Astro + Tailwind CSS + Netlify

## Quick Start

1. Read `cortex/THOUGHTS.md` for project goals
2. Read `NEURONS.md` for codebase structure
3. Check `ralph/IMPLEMENTATION_PLAN.md` for current tasks

## Validation Commands

```bash
# Build check (REQUIRED before completing any task)
npm run build

# Preview locally (manual)
npm run preview

# Lint check
npm run lint
```

## Environment Notes

**WSL/Windows 11 Specifics:**

- Working directory: `~/code/jacqui-website`
- Git line endings: Use `core.autocrlf=input`
- Path separators: Use Unix-style `/` paths

## How to Run

```bash
cd ~/code/jacqui-website

# Single iteration
bash ralph/loop.sh

# Multiple iterations
bash ralph/loop.sh --iterations 10

# Dry run (preview only)
bash ralph/loop.sh --dry-run
```

## Task Monitors

Real-time task tracking:

```bash
# Pending tasks
bash ralph/current_ralph_tasks.sh

# Completed tasks
bash ralph/thunk_ralph_tasks.sh
```

## Loop Stop Sentinel

Ralph outputs when ALL tasks complete:

```text
:::COMPLETE:::
```

## Brain Knowledge Base References

Website skills at: `~/code/brain/skills/domains/websites/`

| Phase | Skill |
|-------|-------|
| Discovery | `requirements-distiller.md` |
| Architecture | `section-composer.md`, `tech-stack-chooser.md` |
| Design | `design-direction.md`, `color-system.md` |
| Copywriting | `value-proposition.md`, `cta-optimizer.md` |
| QA | `acceptance-criteria.md`, `accessibility.md` |
| Launch | `deployment.md`, `finishing-pass.md` |

## Troubleshooting

- **Build fails**: Check `npm run build` output for errors
- **Loop doesn't stop**: Check `:::COMPLETE:::` output
- **Ralph batches tasks**: See PROMPT.md "ONE task" emphasis
- **Wrong mode**: Check iteration number (1 or 3rd = PLAN)

## See Also

- **cortex/THOUGHTS.md** - Strategic goals and deadline
- **cortex/DECISIONS.md** - Architectural decisions
- **NEURONS.md** - Codebase structure map
- **ralph/VALIDATION_CRITERIA.md** - Quality gates
- **docs/** - Project documentation
