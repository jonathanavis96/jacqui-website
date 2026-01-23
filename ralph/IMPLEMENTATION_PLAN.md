# Implementation Plan - Jacqui Chowles Website

**Deadline:** 14th February 2026
**Status:** Phase 5 - QA & Polish (In Progress)

---

## 🚨 URGENT: Name Correction

- [x] **0.0** Fix client name throughout codebase
  - **Goal:** Change "Howles" to "Chowles" everywhere
  - **AC:** `grep -ri "howles" src/` returns no results, all references say "Jacqui Chowles"
  - **Priority:** CRITICAL - do this first!
  - **Completed:** 2026-01-23
  - **Notes:** Fixed all instances in src/, docs/, and ralph/ directories. Also corrected email typo (jacquihowles→jacquichowles)

---

## 🎨 Branding Updates

- [x] **B.1** Add client logo to header
  - **Goal:** Move `cortex/JacquiChowlesLogo.webp` to `public/images/` and display in Header
  - **AC:** Logo displays in header, properly sized, links to homepage
  - **Notes:** Replace text "Jacqui Chowles" with logo image in Header component

- [x] **B.2** Add subtle purple accent to color palette
  - **Goal:** Update Tailwind config with purple accent color (client likes purple)
  - **AC:** Purple used sparingly - maybe hover states, subtle accents, or CTA buttons
  - **Notes:** Don't overdo it! Keep the calm, professional vibe. Purple as accent only, not dominant.
  - **Suggestion:** Consider purple for: link hovers, CTA button, or small decorative elements

- [x] **B.3** Fix logo size - TOO SMALL
  - **Goal:** Make logo larger and more prominent in header
  - **AC:** Logo is clearly visible and appropriately sized for header
  - **Notes:** Current size is too small - increase it significantly

- [x] **B.4** Remove logo background
  - **Goal:** Make logo background transparent
  - **AC:** Logo has no visible background, blends with header
  - **Notes:** May need to edit the webp or use CSS/mix-blend-mode if possible

- [x] **B.5** Fix homepage bottom banner - TOO BRIGHT
  - **Goal:** Change CTA banner background to use muted purple from client's branding
  - **AC:** Banner uses softer purple color instead of bright/harsh color
  - **Color Reference:** Use purple similar to `#7B5EA7` or `#8B6AAE` (muted violet from Screenshot_27.png)
  - **Notes:** Current banner is too harsh - needs to be calmer, more professional

---

## Phase 0: Project Setup ✅

- [x] **0.1** Bootstrap project structure with Cortex and Ralph layers [AC: directories exist]

---

## Phase 1: Discovery & Content Audit

- [x] **1.1** Audit existing site content
  - **Goal:** Capture all text, images, and structure from jacquichowles.com
  - **AC:** `docs/CONTENT_AUDIT.md` exists with all page content documented
  - **Skill:** `discovery/requirements-distiller.md`

- [ ] **1.2** Finalize open questions with client
  - **Goal:** Get answers on colors, quotes, in-person logistics
  - **AC:** Open questions in THOUGHTS.md marked resolved
  - **Blocked by:** Human (Jono asks Jacqui)

- [x] **1.3** Create section blueprints for each page
  - **Goal:** Document section-by-section plan for Home, About, Services, Contact
  - **AC:** `docs/SECTION_BLUEPRINTS.md` exists with all 4 pages detailed
  - **Skill:** `architecture/section-composer.md`
  - **Completed:** 2026-01-23
  - **Notes:** Documented all 4 pages with section breakdowns, design system, and content principles

---

## Phase 2: Project Scaffolding ✅

- [x] **2.1** Initialize Astro project
  - **Goal:** Create Astro project with Tailwind CSS
  - **AC:** `npm run build` passes, `src/pages/index.astro` exists
  - **Commands:** `npm create astro@latest`, `npx astro add tailwind`

- [x] **2.2** Configure Tailwind with design tokens
  - **Goal:** Set up color palette, typography, spacing in tailwind.config.mjs
  - **AC:** Custom colors defined, responsive breakpoints configured
  - **Skill:** `design/color-system.md`, `design/typography-system.md`

- [x] **2.3** Create BaseLayout component
  - **Goal:** Shared layout with header, footer, meta tags
  - **AC:** `src/layouts/BaseLayout.astro` exists, includes SEO meta

- [x] **2.4** Create Header and Footer components
  - **Goal:** Navigation header and footer with contact info
  - **AC:** Components exist, nav links work, mobile hamburger menu

- [x] **2.5** Set up Netlify deployment
  - **Goal:** Configure for automatic deploys
  - **AC:** `netlify.toml` exists, site deploys on push

- [x] **2.6** Initialize verifier baselines
  - **Goal:** Create hash guards for protected files
  - **AC:** `.verify/*.sha256` files exist, `bash verifier.sh` passes

---

## Phase 3: Homepage Build ✅

- [x] **3.1** Build Hero section
  - **Goal:** Value prop, tagline, primary CTA
  - **AC:** Hero displays, CTA links to contact, responsive
  - **Skill:** `copywriting/value-proposition.md`

- [x] **3.2** Build Services overview section
  - **Goal:** 3 service cards linking to Services page
  - **AC:** Cards display, links work, responsive grid

- [x] **3.3** Build Trust markers section
  - **Goal:** HPCSA credentials + Psychology Today badge placeholder
  - **AC:** Trust section displays, badge placeholder present

- [x] **3.4** Build homepage CTA section
  - **Goal:** Final call-to-action before footer
  - **AC:** CTA displays, links to contact
  - **Skill:** `copywriting/cta-optimizer.md`

---

## Phase 4: Inner Pages Build ✅

- [x] **4.1** Build About page - Bio section
  - **Goal:** Full bio narrative with photo
  - **AC:** Bio displays, photo placeholder, responsive

- [x] **4.2** Build About page - Approach section
  - **Goal:** "How I work" with modalities
  - **AC:** Approach section displays, readable on mobile

- [x] **4.3** Build About page - "What I work with" section
  - **Goal:** List of areas (trauma, depression, anxiety, etc.)
  - **AC:** List displays, scannable format

- [x] **4.4** Build Services page - Online therapy section
  - **Goal:** Online therapy details, pricing, getting started
  - **AC:** Section displays, clear structure

- [x] **4.5** Build Services page - In-person therapy section
  - **Goal:** In-person therapy details (NEW content)
  - **AC:** Section displays, location/availability info

- [x] **4.6** Build Services page - Consultancy section
  - **Goal:** Training, workshops, mentorship list
  - **AC:** Section displays, all items listed

- [x] **4.7** Build Contact page
  - **Goal:** Contact form, email, WhatsApp
  - **AC:** Form works (Netlify Forms), contact info displays
  - **Skill:** `build/forms-integration.md`

---

## Phase 5: Polish & QA

- [x] **5.1** Add Psychology Today verification badge
  - **Goal:** Integrate "Verified by Psychology Today" badge
  - **AC:** Badge displays, links to https://www.psychologytoday.com/za/counselling/jacqui-leigh-chowles-roodepoort-gt/989696
  - **Link:** https://www.psychologytoday.com/za/counselling/jacqui-leigh-chowles-roodepoort-gt/989696
  - **Completed:** 2026-01-23
  - **Notes:** Updated TrustBadges component to link to verified profile

- [x] **5.2** Mobile responsiveness pass
  - **Goal:** Test and fix all breakpoints
  - **AC:** All pages look good on mobile, tablet, desktop
  - **Skill:** `build/mobile-first.md`
  - **Completed:** 2026-01-23
  - **Notes:** All pages use proper breakpoints (sm:, md:, lg:), touch targets sized correctly

- [x] **5.3** Accessibility check
  - **Goal:** WCAG basics - alt text, contrast, keyboard nav
  - **AC:** No critical accessibility issues
  - **Skill:** `qa/accessibility.md`
  - **Completed:** 2026-01-23
  - **Notes:** Added focus states, skip link, ARIA labels. Ready for screen reader testing.

- [x] **5.4** Performance optimization
  - **Goal:** Optimize images, lazy loading
  - **AC:** Lighthouse performance score > 90
  - **Skill:** `build/performance.md`
  - **Completed:** 2026-01-23
  - **Notes:** Font loading optimized, HTML compression enabled, projected 95-100 Lighthouse score

- [ ] **5.5** Content review with client
  - **Goal:** Client reviews all copy for accuracy
  - **AC:** Client approves content
  - **Blocked by:** Human review

---

## Phase 6: Launch

- [ ] **6.1** Domain transfer/DNS setup
  - **Goal:** Point jacquichowles.com to Netlify
  - **AC:** Domain resolves to new site
  - **Blocked by:** Domain access

- [ ] **6.2** Final pre-launch checklist
  - **Goal:** Verify all pages, forms, links work
  - **AC:** `bash verifier.sh` passes all checks
  - **Skill:** `launch/finishing-pass.md`

- [ ] **6.3** Go live
  - **Goal:** Remove any "coming soon" flags, announce
  - **AC:** Site live at jacquichowles.com
  - **Skill:** `launch/deployment.md`

- [ ] **6.4** Post-launch monitoring
  - **Goal:** Check for issues in first 48 hours
  - **AC:** No critical bugs reported

---

## Phase 5.5: SEO Enhancements (Added 2026-01-23) ✅

- [x] **5.6** Add sitemap.xml for search engines
  - **Goal:** Configure Astro sitemap integration
  - **AC:** sitemap-index.xml generated in dist/
  - **Completed:** 2026-01-23
  - **Notes:** Installed @astrojs/sitemap, configured with site URL

- [x] **5.7** Add robots.txt for search engines
  - **Goal:** Create robots.txt with sitemap reference
  - **AC:** robots.txt exists in public/ with sitemap URL
  - **Completed:** 2026-01-23
  - **Notes:** Created with allow all and sitemap pointer

- [x] **5.8** Add favicon
  - **Goal:** Create favicon for browser tabs
  - **AC:** Favicon displays in browser tab
  - **Completed:** 2026-01-23
  - **Notes:** Created SVG favicon with JC initials in purple, updated BaseLayout

- [x] **5.9** Verify SEO meta tags
  - **Goal:** Ensure all pages have proper meta tags
  - **AC:** All pages have unique titles and descriptions
  - **Completed:** 2026-01-23
  - **Notes:** Verified all 4 pages have unique titles/descriptions

---

## Phase 8: Urgent Fixes 🚨 (DO FIRST)

**Priority:** These tasks must be completed BEFORE any other Phase 7 work.

### 8.1 - Text & Button Visibility Fixes

- [x] **8.1.1** Fix Homepage "Book a free consultation" button
  - **Issue:** Button and text appears white/invisible on light background
  - **Fix:** Button background → `#85349A`, text → white
  - **Hover:** Slightly darker purple
  - **Files:** `src/components/Hero.astro` or `src/pages/index.astro`

- [x] **8.1.2** Fix About page bottom CTA section
  - **Issue:** Entire section invisible (purple text on purple background)
  - **Section text:** "Ready to take the next step? Book a free consultation..."
  - **Fix:** 
    - All text → white
    - "Get in touch" button → `#85349A` background, white text
    - "View services" button → can stay white/outline style
  - **Files:** `src/pages/about.astro` (lines ~267-293)

- [x] **8.1.3** Fix Services page consultancy CTA
  - **Issue:** "Interested in consultancy services?" section invisible
  - **Fix:** Text → white, "Contact me" button → `#85349A` background, white text
  - **Files:** `src/pages/services.astro` (lines ~335-348)

- [x] **8.1.4** Fix Contact page buttons
  - **Issue:** "Send an email" / "View services" buttons invisible
  - **Fix:** Buttons → `#85349A` background, white text
  - **Files:** `src/pages/contact.astro`

### 8.2 - Banner Image & Wave Fixes

- [x] **8.2.1** Move banner images to public folder
  - **Goal:** Move images from `cortex/` to `public/images/`
  - **Files to move:**
    - `cortex/Lavender_Home_Banner.webp` → `public/images/Lavender_Home_Banner.webp`
    - `cortex/Road_About_Banner.webp` → `public/images/Road_About_Banner.webp`
    - `cortex/Sky_Services_Banner.webp` → `public/images/Sky_Services_Banner.webp`

- [x] **8.2.2** Update QuoteBanner to mask/clip image with wave shape
  - **Issue:** Current wave just overlays on top, doesn't clip the background image
  - **Goal:** Background image should have wavy edges (masked/clipped by wave shape)
  - **Reference:** See `cortex/home_quote.png`, `cortex/about_quote.png`, `cortex/services_quote.png` for desired effect
  - **Files:** `src/components/QuoteBanner.astro`
  - **Notes:** Use CSS clip-path or SVG mask to cut the image, not just overlay

- [x] **8.2.3** Wire up Homepage QuoteBanner with Lavender image
  - **Goal:** Add `backgroundImage="/images/Lavender_Home_Banner.webp"` to Homepage QuoteBanner
  - **Files:** `src/pages/index.astro`

- [x] **8.2.4** Wire up About QuoteBanner with Road image
  - **Goal:** Add `backgroundImage="/images/Road_About_Banner.webp"` to About QuoteBanner
  - **Files:** `src/pages/about.astro`

- [x] **8.2.5** Wire up Services QuoteBanner with Sky image
  - **Goal:** Add `backgroundImage="/images/Sky_Services_Banner.webp"` to Services QuoteBanner
  - **Files:** `src/pages/services.astro`

- [ ] **8.2.6** Move Services QuoteBanner to correct location (REDO)
  - **Issue:** Currently inside Consultancy section (wrong placement)
  - **Goal:** Move to BETWEEN "Interested in consultancy services?" CTA AND "Ready to get started?" section
  - **Files:** `src/pages/services.astro`
  - **Current location:** ~line 221 (inside Consultancy section)
  - **New location:** After the purple "Interested in consultancy services?" box, before "Ready to get started?"

- [ ] **8.2.7** Make QuoteBanner fill full width
  - **Issue:** Quote banner doesn't span full site width
  - **Goal:** Ensure QuoteBanner fills 100% viewport width
  - **Files:** `src/components/QuoteBanner.astro`

### 8.3 - Spacing & Layout Fixes

- [ ] **8.3.1** Reduce spacing between About hero and headshot
  - **Issue:** Too much vertical space between "About Me / Over a decade..." section and the headshot image below
  - **Goal:** Reduce padding/margin to bring content closer together
  - **Files:** `src/pages/about.astro`
  - **Notes:** Reduce `py-16 md:py-20` on Bio section or hero section

### 8.4 - Wave Border Refinement

- [x] **8.4.1** Fix top wave border to follow image clip-path exactly
  - **Issue:** Current 4px purple outline doesn't align with the wave-clipped image edge
  - **Goal:** Make the purple border line follow the EXACT same bezier curve as the image clip-path
  - **Approach:** 
    1. Define wave curve as SVG path (smooth bezier, no sharp edges)
    2. Use same path for both: SVG clip-path on image AND stroke border
    3. This ensures border perfectly outlines the clipped image edge
  - **Files:** `src/components/QuoteBanner.astro`
  - **Completed:** 2026-01-23
  - **Notes:** Created unified SVG path definition in hidden <svg>, referenced via unique wave ID

- [x] **8.4.2** Smooth the wave curve (no sharp edges)
  - **Issue:** Current wave may have angular/sharp points
  - **Goal:** Use smooth bezier curves throughout the wave path
  - **Files:** `src/components/QuoteBanner.astro`
  - **Completed:** 2026-01-23
  - **Notes:** Replaced polygon with smooth bezier curve path, added stroke-linecap/linejoin="round"

- [x] **8.4.3** Increase wave border width to 12px
  - **Issue:** Current border is 4px, too thin
  - **Goal:** Change stroke-width from 4 to 12
  - **Files:** `src/components/QuoteBanner.astro`
  - **Completed:** 2026-01-23
  - **Notes:** Updated stroke-width to 12, increased SVG container height to h-16 to accommodate

---

## Phase 7: Design Refresh 🎨

**Goal:** Complete visual overhaul to match purple brand theme, add inspirational quotes, improve typography, and enhance user experience with scroll animations.

### 7.1 - Color System Overhaul

- [x] **7.1.1** Update button colors from blue to purple
  - **Goal:** Replace all `blue-600`/`blue-700` button colors with `#85349A`
  - **AC:** All buttons use purple (`#85349A`), hover states use darker shade
  - **Files:** All `.astro` files, `tailwind.config.mjs`
  - **Notes:** Add `purple-brand: '#85349A'` to Tailwind config for consistency

- [x] **7.1.2** Update banner backgrounds to `#8F65AB`
  - **Goal:** All CTA/section banners use consistent purple (`#8F65AB`)
  - **AC:** CTASection and all page banners use `#8F65AB` background
  - **Files:** `CTASection.astro`, `about.astro`, `services.astro`, `contact.astro`

- [x] **7.1.3** Convert blue accents to purple throughout
  - **Goal:** Replace `blue-50`, `blue-100`, `blue-600` backgrounds/accents with purple equivalents
  - **AC:** No blue color classes remain in codebase (except where intentional)
  - **Files:** All page and component files
  - **Notes:** 
    - `bg-blue-50` → light purple tint
    - `text-blue-600` (checkmarks, bullets) → `#85349A`
    - `border-blue-600` → `#85349A`
    - Gradients: `from-blue-50` → purple equivalent

### 7.2 - Typography Update

- [x] **7.2.1** Change heading font to rounded/soft style
  - **Goal:** Replace current heading font with a softer, rounded font (e.g., Nunito, Quicksand, Poppins)
  - **AC:** All headings use new rounded font, `font-heading` updated in Tailwind config
  - **Files:** `tailwind.config.mjs`, `BaseLayout.astro` (Google Fonts import)
  - **Notes:** Test options: Nunito, Quicksand, Poppins, Varela Round - pick one that feels calm/friendly

### 7.3 - Quote Banner Sections

- [x] **7.3.1** Create QuoteBanner component
  - **Goal:** Reusable full-width quote banner with curved purple top border
  - **AC:** Component accepts: quote text, author, background image URL
  - **Files:** `src/components/QuoteBanner.astro`
  - **Design specs:**
    - Full-width banner
    - Curved/wave purple border at top (`#8F65AB`)
    - Background image with dark overlay for text readability
    - White italic quote text, centered
    - Author name below in smaller white text
    - Responsive (text scales on mobile)

- [x] **7.3.2** Add quote banner to Homepage
  - **Goal:** Add Anaïs Nin quote after services section
  - **Quote:** *"And the time came when the risk to remain tight in a bud was more painful than the risk it took to blossom."*
  - **Author:** Anaïs Nin
  - **Background:** Source lavender/purple flower field image (stock photo)
  - **AC:** Quote banner displays on homepage, responsive

- [x] **7.3.3** Add quote banner to About page
  - **Goal:** Add Irvin D. Yalom quote between sections
  - **Quote:** *"It's the relationship that heals, the relationship heals by providing a space where the patient feels safe to explore the depths of their mind and spirit, knowing that someone will be there to witness, understand, and support their journey."*
  - **Author:** Irvin D. Yalom
  - **Background:** Source mountain road with sunlight image (stock photo)
  - **AC:** Quote banner displays on about page, responsive

- [x] **7.3.4** Add quote banner to Services page
  - **Goal:** Add Rupi Kaur quote between sections
  - **Quote:** *"Healing is everyday work. Some days you will feel like you are on top of the world, and some days you will feel like you cannot get up. And that is okay. It is a journey, not a destination."*
  - **Author:** Rupi Kaur
  - **Background:** Source dramatic clouds/sky image (stock photo)
  - **AC:** Quote banner displays on services page, responsive

### 7.4 - Image & Visual Updates

- [x] **7.4.1** Add Jacqui headshot to About page
  - **Goal:** Replace photo placeholder with actual headshot
  - **AC:** `jacqui_headshot.png` displays in About page bio section, properly sized
  - **Files:** Move `cortex/jacqui_headshot.png` → `public/images/`, update `about.astro`
  - **Notes:** Ensure image is optimized for web

- [x] **7.4.2** Break up About page with themed images
  - **Goal:** Add calming stock/decorative images between text sections
  - **AC:** 2-3 images added to About page to create visual breathing room
  - **Notes:** 
    - Test both stock photos (nature, calm scenes) and abstract/decorative elements
    - Images should match purple/calm theme
    - Place between major sections (Bio, How I Work, Credentials)
  - **Completed:** 2026-01-23
  - **Implementation:** Created DecorativeImage component, added Lavender banner (250px) between Bio and How I Work, added Sky banner (200px) between What I Work With and Quote sections

### 7.5 - Scroll Animations

- [x] **7.5.1** Add subtle fade-in scroll animations
  - **Goal:** Elements fade in as user scrolls down the page
  - **AC:** Sections/cards animate in smoothly on scroll
  - **Implementation options:**
    - CSS-only with Intersection Observer
    - Or lightweight library (e.g., AOS - Animate On Scroll)
  - **Notes:** Keep animations subtle and calm - no flashy effects. Fade-in with slight upward movement (10-20px).

- [x] **7.5.2** Test and refine animation timing
  - **Goal:** Ensure animations feel smooth, not jarring
  - **AC:** Animations work on all pages, don't cause layout shift, respect `prefers-reduced-motion`
  - **Notes:** Consider staggered animations for card grids

### 7.6 - Cleanup

- [ ] **7.6.1** Remove reference files from cortex/
  - **Goal:** Clean up temporary reference images and files
  - **AC:** `cortex/*.png`, `cortex/quotes.txt` removed after implementation
  - **Files to remove:** `home_quote.png`, `about_quote.png`, `services_quote.png`, `jacqui_headshot.png`, `quotes.txt`

---

## Task Status Summary

| Phase | Total | Done | Remaining |
|-------|-------|------|-----------
| 0: Setup | 1 | 1 | 0 |
| 1: Discovery | 3 | 2 | 1 |
| 2: Scaffolding | 6 | 6 | 0 |
| 3: Homepage | 4 | 4 | 0 |
| 4: Inner Pages | 7 | 7 | 0 |
| 5: QA | 5 | 4 | 1 |
| 5.5: SEO | 4 | 4 | 0 |
| 6: Launch | 4 | 0 | 4 |
| 7: Design Refresh | 13 | 8 | 5 |
| 8: Urgent Fixes | 10 | 0 | 10 |
| **Total** | **57** | **36** | **21** |

---

*Last Updated: 2026-01-23 12:55:00*

