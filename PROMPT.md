# Ralph Loop - Jacqui Howles Website

You are Ralph. Mode is passed by loop.sh header.

## Core Mechanics

Read `~/code/brain/workers/ralph/PROMPT.md` for full Ralph loop mechanics (PLANNING vs BUILDING modes, commit flow, stop conditions).

## Project Context Files

| File | Purpose |
|------|---------|
| THOUGHTS.md | Project goals, success criteria, tech stack - **READ FIRST** |
| NEURONS.md | Codebase map (read via subagent when needed) |
| IMPLEMENTATION_PLAN.md | TODO list (persistent across iterations) |
| AGENTS.md | Validation commands, project conventions |

## Brain Knowledge Base

For website patterns and best practices, use progressive disclosure:
1. `~/code/brain/skills/domains/websites/README.md` - Website skills overview
2. `~/code/brain/skills/domains/websites/<phase>/<skill>.md` - Specific skills
3. `~/code/brain/skills/SUMMARY.md` - Full knowledge base overview

**Key website skills for this project:**
- `discovery/requirements-distiller.md` - Understand scope
- `architecture/section-composer.md` - Plan page sections
- `design/design-direction.md` - Visual constraints
- `copywriting/value-proposition.md` - Hero and CTA copy
- `qa/acceptance-criteria.md` - Verify deliverables
- `launch/deployment.md` - Go live

❌ Never scan all skills by default
✅ Use the hierarchy above

## Task Completion Flow

When marking a task `[x]` complete:

1. **Validate** using commands below
2. **Log to THUNK.md** - Append to current era table (DO NOT overwrite file):
   ```markdown
   | <next_thunk_num> | <task_id> | <priority> | <description> | YYYY-MM-DD |
   ```
3. **Commit** all changes (local only)
4. **Update** IMPLEMENTATION_PLAN.md: mark `[x]`, add discovered subtasks

⚠️ **THUNK.md is append-only** - Never rewrite or restructure it. Only append new rows to the existing table.

## Validation (before marking task complete)

```bash
# Astro validation commands
npm run build          # Build passes
npm run preview        # Preview works (manual check)

# Linting
npm run lint           # If configured

# General checks
ls -la src/pages/      # Pages exist
ls -la src/components/ # Components exist
```

## Self-Improvement Protocol

**End of each BUILD iteration**:

If you used undocumented knowledge/procedure/tooling:
1. Search `~/code/brain/skills/` for existing matching skill
2. Search `~/code/brain/skills/self-improvement/GAP_BACKLOG.md` for existing gap entry
3. If not found: append new entry to `GAP_BACKLOG.md`
4. If gap is clear, specific, and recurring: promote to `SKILL_BACKLOG.md`

See `~/code/brain/skills/self-improvement/GAP_CAPTURE_RULES.md` for details.

## Project-Specific Notes

### Client Requirements
- **Deadline:** 14th February 2026 (hard deadline)
- **Content:** Keep ALL existing content, restructure for clarity
- **Design:** Calm, inviting, not overly feminine
- **Trust:** HPCSA credentials + Psychology Today badge
- **Services:** Add in-person alongside online

### Tech Stack
- **Framework:** Astro
- **Styling:** Tailwind CSS
- **Deployment:** Netlify
- **Forms:** Netlify Forms

### Page Structure
| Page | Key Sections |
|------|--------------|
| Home | Hero, services overview, trust markers, CTA |
| About | Bio, approach, credentials, "what I work with" |
| Services | Online therapy, in-person therapy, consultancy |
| Contact | Email, WhatsApp, booking CTA |
