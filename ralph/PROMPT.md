# Ralph Loop - Jacqui Chowles Website

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

- `discovery/requirements-distiller.md` - Extract requirements from briefs
- `architecture/section-composer.md` - Structure page sections
- `copywriting/value-proposition.md` - Craft compelling copy
- `design/color-system.md` - Color palette decisions
- `launch/deployment.md` - Netlify deployment

## Token Efficiency Rules (CRITICAL)

### PLANNING Mode Output

In PLANNING mode, you MUST end with:

```text
:::BUILD_READY:::
```

This signals loop.sh to proceed to BUILD mode. Without this marker, the iteration is wasted.

### Batch Similar Fixes

When you encounter multiple instances of the same issue type (e.g., SC2155, SC2086):

1. **FIX ALL instances in one iteration** - don't create separate tasks for each
2. **Group by error type**, not by file
3. **One commit per error type**: `fix(ralph): resolve SC2155 in all shell scripts`

### Formatting Discipline

- **DO NOT** run shfmt on individual files repeatedly
- If shellcheck fixes require reformatting, run `shfmt -w -i 2 <file>` ONCE after all fixes
- **NEVER** include "applied shfmt formatting" as the main work - it's incidental to the real fix

### Context You Already Have

**NEVER repeat these (you already know):**

- `pwd`, `git branch` - known from header
- `.verify/latest.txt` - read ONCE at start
- `tail THUNK.md` - get next number ONCE
- Same file content - read ONCE, remember it

**ALWAYS batch:** `grep pattern file1 file2 file3` not 3 separate calls.

### Task ID Uniqueness

**CRITICAL:** Before creating any task ID, search IMPLEMENTATION_PLAN.md to verify it doesn't exist.

- Use format: `<phase>.<sequence>` (e.g., `9.1`, `9.2`)
- If `9.1` exists, use `9.2`, not `9.1` again
- Duplicate IDs cause confusion and wasted iterations

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
