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

### 9.6 Fix homepage banner filename mismatch
- **Problem:** Homepage banner shows grey/broken because filename doesn't match
- **Root cause:** File is `public/images/Lavender_Home_Banner_.webp` (trailing underscore) but code references `/images/Lavender_Home_Banner.webp` (no underscore)
- **Fix:** Rename file to remove trailing underscore
- **Command:** `mv public/images/Lavender_Home_Banner_.webp public/images/Lavender_Home_Banner.webp`
- **AC:**
  - [ ] File renamed to `Lavender_Home_Banner.webp` (no trailing underscore)
  - [ ] Homepage QuoteBanner displays the lavender image (not grey)

---

### 9.7 Fix QuoteBanner component - remove overlay + anchor to TOP
- **Problem:** QuoteBanner has dark gradient overlay hiding the image, and crops from center instead of showing the top
- **File:** `src/components/QuoteBanner.astro`
- **Current code issues (around lines 16-21):**
  ```astro
  class="absolute inset-0 bg-cover bg-center bg-no-repeat"  <!-- bg-center is WRONG -->
  ...
  <div class="absolute inset-0 bg-gradient-to-b from-gray-900/40 via-gray-900/50 to-gray-900/60"></div>  <!-- DELETE THIS -->
  ```
- **Required changes:**
  1. **Change `bg-center` to `bg-top`** on line ~16 - image anchors to top, bottom gets cropped
  2. **DELETE the entire dark gradient overlay div** (line ~19-20) - no overlay at all
  3. **Keep the bottom wave SVG** (lines 46-51) - that stays
  4. **Add text-shadow to quote text** for readability without overlay (e.g., `style="text-shadow: 0 2px 4px rgba(0,0,0,0.5)"`)
- **AC:**
  - [ ] `bg-center` changed to `bg-top` in background div
  - [ ] Dark gradient overlay div completely removed (no `from-gray-900/40` etc.)
  - [ ] All 3 banners (Home/About/Services) show their TOP wave decoration (manually added by human)
  - [ ] Quote text still readable (text-shadow added)
  - [ ] Bottom wave SVG decoration retained

---

### 9.8 About page: Fix "How I Work" section layout
- **Problem:** Heading is centered above grid; image is too large; layout doesn't match page style
- **File:** `src/pages/about.astro` (lines 64-127)
- **Current structure (WRONG):**
  ```
  <h2 centered>How I Work</h2>
  <grid 2-col>
    <image full-width>
    <text>
  </grid>
  ```
- **Required structure:**
  ```
  <grid 2-col>
    <image smaller (max-w-xs or max-w-sm)>
    <div>
      <h2 left-aligned>How I Work</h2>
      <text paragraphs>
    </div>
  </grid>
  ```
- **Specific changes:**
  1. Move `<h2>How I Work</h2>` INSIDE the right column div, ABOVE the text
  2. Change h2 from `text-center` to `text-left`
  3. Make image smaller: add `max-w-xs` or `max-w-sm` class to the img or its container
  4. Image stays on left, text+heading on right
- **AC:**
  - [ ] "How I Work" h2 is inside right column, above text paragraphs
  - [ ] h2 is left-aligned (not centered)
  - [ ] Image is visibly smaller (max-w-xs or max-w-sm)
  - [ ] Responsive: stacks sensibly on mobile

---

### 9.9 About page: Fix "What I Work With" section layout
- **Problem:** Large empty space - image and intro text span full width above 8 cards
- **File:** `src/pages/about.astro` (lines 129-244)
- **Current structure (WRONG):**
  ```
  <h2 centered>What I Work With</h2>
  <grid 2-col>
    <text intro>
    <image>
  </grid>
  <grid 2-col full-width>
    <8 cards>
  </grid>
  ```
- **Required structure:**
  ```
  <grid 2-col>
    <div left-col>
      <h2 left-aligned>What I Work With</h2>
      <text intro>
      <grid 2-col for 4 cards>  <!-- first 4 cards here -->
    </div>
    <div right-col>
      <image smaller, vertically centered>
    </div>
  </grid>
  <grid 2-col for remaining 4 cards below>
  ```
- **Goal:** Cards flow alongside the image - no big empty white space
- **Specific changes:**
  1. Move `<h2>What I Work With</h2>` into left column, above intro text
  2. Change h2 from `text-center` to `text-left`
  3. Move first 4 cards INTO the left column below intro text
  4. Make image smaller and keep in right column
  5. Remaining 4 cards go in a grid below the main 2-col grid
- **AC:**
  - [ ] "What I Work With" h2 is inside left column, above intro text
  - [ ] h2 is left-aligned (not centered)
  - [ ] First 4 cards appear in left column below intro text
  - [ ] Image is in right column, smaller size
  - [ ] No large empty white space
  - [ ] Responsive: stacks sensibly on mobile

---

## 🚫 BLOCKED - Human Required

**Ralph: SKIP this section.**

- Finalize open questions with client
- Content review with client
- Domain transfer/DNS setup
- Go live
- Post-launch monitoring

---

*Last Updated: 2026-01-23 16:00:00*
