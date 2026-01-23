# Implementation Plan - Jacqui Chowles Website

**Deadline:** 14th February 2026
**Status:** Phase 9 - Visual Polish

---

## Phase 9: Visual Polish & Image Integration

### Context
- Images have been pre-cropped by human with purple border + top wave decoration already applied
- Reference: `~/code/brain/skills/domains/websites/README.md` for skill workflow

---

### 9.1 Convert images to webp and move to public/images/
- **Goal:** Optimize cortex/ images for web and move to public/images/
- **Files:** image3_mirror.png, image4_butterfly.png, image5_chair.png, image6_chairs.png
- **AC:**
  - [x] All 4 images converted to .webp format
  - [x] Images moved to public/images/
  - [x] Original .png files removed from cortex/
- **Skill:** `build/performance.md`

---

### 9.2 Rewrite QuoteBanner component
- **Goal:** Redesign QuoteBanner as fixed-height full-width banner with bottom wave only
- **Context:** Images already have purple border + top wave applied by human - component just needs to display them properly
- **Design:**
  - Fixed height (300-400px), full-width banner
  - Background image fills the banner (object-cover)
  - Bottom wave decoration only (top of image cropped naturally)
  - Quote text overlay with dark gradient for readability
- **AC:**
  - [x] QuoteBanner displays at fixed height (300-400px)
  - [x] Background image fills container with object-cover
  - [x] Only bottom wave SVG decoration (no top wave in component)
  - [x] Quote text readable with gradient overlay
  - [x] Responsive on mobile
- **Skill:** `build/component-development.md`

---

### 9.3 About page: Remove DecorativeImage components + fix stray tag
- **Goal:** Clean up About page by removing random decorative banners
- **AC:**
  - [x] Both DecorativeImage components removed from about.astro
  - [x] Stray `</section>` tag (around line 236) fixed
  - [x] Page renders without errors

---

### 9.4 About page: Reduce spacing between hero and bio
- **Goal:** Tighten spacing between headshot and "Over a decade..." text
- **Context:** Currently hero has pb-8, bio section has pt-8 - too much gap
- **AC:**
  - [ ] Spacing between hero and bio section reduced
  - [ ] Visual flow feels natural (not cramped, not sparse)
- **Skill:** `design/spacing-layout.md`

---

### 9.5 About page: Add side-by-side images with rounded corners
- **Goal:** Add mirror + butterfly images alongside text sections
- **Files:** image3_mirror.webp, image4_butterfly.webp (after 9.1 conversion)
- **Design:**
  - Rounded corners on images
  - Alternating left/right placement alongside text
- **AC:**
  - [ ] image3_mirror.webp displayed with rounded corners
  - [ ] image4_butterfly.webp displayed with rounded corners
  - [ ] Images placed alongside text sections (alternating sides)
  - [ ] Responsive layout on mobile (stack vertically)
- **Skill:** `design/spacing-layout.md`

---

## 🚫 BLOCKED - Human Required

**Ralph: SKIP this section. These tasks require human action.**

The following tasks are waiting on Jono/client:
- Finalize open questions with client (colors, quotes, in-person logistics)
- Content review with client (client approves copy)
- Domain transfer/DNS setup (need domain access)
- Go live (after above complete)
- Post-launch monitoring (after go-live)

---

*Last Updated: 2026-01-23 15:45:00*
