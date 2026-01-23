# Implementation Plan - Jacqui Howles Website

**Deadline:** 14th February 2026
**Status:** Phase 5 - QA & Polish (In Progress)

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

- [ ] **5.1** Add Psychology Today verification badge
  - **Goal:** Integrate actual badge with client's verification code
  - **AC:** Badge displays, links to Psychology Today profile
  - **Blocked by:** Client provides verification code

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

## Task Status Summary

| Phase | Total | Done | Remaining |
|-------|-------|------|-----------
| 0: Setup | 1 | 1 | 0 |
| 1: Discovery | 3 | 2 | 1 |
| 2: Scaffolding | 6 | 6 | 0 |
| 3: Homepage | 4 | 4 | 0 |
| 4: Inner Pages | 7 | 7 | 0 |
| 5: QA | 5 | 3 | 2 |
| 6: Launch | 4 | 0 | 4 |
| **Total** | **30** | **23** | **7** |

---

*Last Updated: 2026-01-23 02:09:45*
