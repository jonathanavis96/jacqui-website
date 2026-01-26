# Implementation Plan - Jacqui Chowles Website

**Deadline:** 14th February 2026  
**Status:** Phase 9 - Visual Polish (Round 2)  
**Brain Skills Reference:** `~/code/brain/skills/domains/websites/README.md`

---

## Phase 9: Banner & Layout Fixes

### Critical Context for Ralph
- **Images are pre-edited by human** - purple border + TOP wave decoration already baked into banner images
- **QuoteBanner must show TOP of image** - use `bg-top` so the manually-added top wave displays; BOTTOM gets cropped
- **NO dark overlay on banners** - remove ALL opacity/gradient overlays; images are designed to work as-is
- **Skill workflow:** `build/component-development.md` for components, `design/spacing-layout.md` for layout

---

## Tasks

### Phase 10: Markdown Lint Fixes

**Context:** The following markdown lint errors were detected by markdownlint and need to be fixed to ensure documentation quality and consistency.

- [ ] **10.1** Fix MD013 (line-length) errors in cortex/AGENTS.md
  - **AC:** `markdownlint cortex/AGENTS.md` passes (no MD013 errors)
  - **Lines:** 5, 47, 101

- [ ] **10.2** Fix MD022 (blanks-around-headings) errors in cortex/AGENTS.md
  - **AC:** `markdownlint cortex/AGENTS.md` passes (no MD022 errors)
  - **Lines:** 9, 15, 61, 66, 77

- [ ] **10.3** Fix MD032 (blanks-around-lists) errors in cortex/AGENTS.md
  - **AC:** `markdownlint cortex/AGENTS.md` passes (no MD032 errors)
  - **Lines:** 10, 16, 29, 34, 62, 89

- [ ] **10.4** Fix MD060 (table-column-style) errors in cortex/AGENTS.md
  - **AC:** `markdownlint cortex/AGENTS.md` passes (no MD060 errors)
  - **Lines:** 46 (multiple table pipe spacing issues)

- [ ] **10.5** Fix MD034 (no-bare-urls) error in cortex/AGENTS.md
  - **AC:** `markdownlint cortex/AGENTS.md` passes (no MD034 errors)
  - **Line:** 86

- [ ] **10.6** Fix MD013 (line-length) errors in cortex/CORTEX_SYSTEM_PROMPT.md
  - **AC:** `markdownlint cortex/CORTEX_SYSTEM_PROMPT.md` passes (no MD013 errors)
  - **Lines:** 7, 46, 48

- [ ] **10.7** Fix MD022 (blanks-around-headings) errors in cortex/CORTEX_SYSTEM_PROMPT.md
  - **AC:** `markdownlint cortex/CORTEX_SYSTEM_PROMPT.md` passes (no MD022 errors)
  - **Lines:** 11, 17, 23, 52, 57

- [ ] **10.8** Fix MD032 (blanks-around-lists) errors in cortex/CORTEX_SYSTEM_PROMPT.md
  - **AC:** `markdownlint cortex/CORTEX_SYSTEM_PROMPT.md` passes (no MD032 errors)
  - **Lines:** 12, 18, 24, 53, 58, 73

- [ ] **10.9** Fix MD032 (blanks-around-lists) errors in cortex/DECISIONS.md
  - **AC:** `markdownlint cortex/DECISIONS.md` passes (no MD032 errors)
  - **Lines:** 15, 24, 30

- [ ] **10.10** Fix MD031 (blanks-around-fences) errors in cortex/AGENTS.md
  - **AC:** `markdownlint cortex/AGENTS.md` passes (no MD031 errors)
  - **Lines:** 67, 78

---

## 🚫 BLOCKED - Human Required

**Ralph: SKIP this section.**

- Finalize open questions with client
- Content review with client
- Domain transfer/DNS setup
- Go live
- Post-launch monitoring

---

*Last Updated: 2026-01-26 21:11:14*
