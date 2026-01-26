# Implementation Plan - Jacqui Chowles Website

Last updated: 2026-01-26 21:30:00

## Current State Summary

- **Homepage:** Built with hero, services overview, trust badges, CTA section
- **About Page:** Bio, How I Work, What I Work With sections - needs content update
- **Services Page:** Text-only, needs images
- **Contact Page:** Form exists, FAQ section exists (needs accordion + new questions)
- **Components:** Header, Footer, Hero, CTASection, QuoteBanner, ServiceCard, TrustBadges
- **Styling:** Tailwind CSS with purple brand colours, responsive
- **Images:** Banners done, stock office images downloaded (therapy_office_1.webp, therapy_office_2.webp)

**Blockers:** Client content updates needed, Formspree requires Jacqui's email

---

## Skill References

| Skill | Path | Use For |
|-------|------|---------|
| Section Composer | `~/code/brain/skills/domains/websites/architecture/section-composer.md` | Page structure, FAQ placement |
| CTA Optimizer | `~/code/brain/skills/domains/websites/copywriting/cta-optimizer.md` | Button text, CTA wording |
| Value Proposition | `~/code/brain/skills/domains/websites/copywriting/value-proposition.md` | Hero text, messaging |
| Spacing & Layout | `~/code/brain/skills/domains/websites/design/spacing-layout.md` | Visual rhythm, mobile-first |

---

## HIGH Priority

### Phase 10.1: UK English Spelling Fixes (1 task)

- [ ] **10.1.1** Fix all UK spellings across site
  - **Goal:** Replace US spellings with UK equivalents in services.astro, about.astro, index.astro
  - **AC:** `grep -ri "ize\|ization" src/pages/` returns nothing

### Phase 10.2: Contact Details Update (1 task)

- [ ] **10.2.1** Update phone number and add physical address
  - **Goal:** Replace phone with +27 76 605 4736, update WhatsApp link, add physical address to contact page
  - **AC:** `grep -r "76 605 4736" src/` shows correct number, address visible on contact page

### Phase 10.3: CTA Updates - Remove Free Consultation (2 tasks)

- [ ] **10.3.1** Remove all "free consultation" mentions site-wide
  - **Goal:** Update all pages/components to remove "free" from consultation references
  - **Skill:** `~/code/brain/skills/domains/websites/copywriting/cta-optimizer.md`
  - **AC:** `grep -ri "free.*consult\|free.*15" src/` returns nothing

- [ ] **10.3.2** Fix about page CTA button contrast
  - **Goal:** Change button to white on purple background
  - **AC:** Button visually distinct from purple section

### Phase 10.4: Homepage Content Update (1 task)

- [ ] **10.4.1** Update homepage terminology from "counselling psychology" to "therapy"
  - **Goal:** Change hero/intro text to use "therapy"
  - **Skill:** `~/code/brain/skills/domains/websites/copywriting/value-proposition.md`
  - **AC:** Hero uses "therapy" terminology

### Phase 10.5: About Page Content Updates (4 tasks)

- [ ] **10.5.1** Update About Me bio section
- [ ] **10.5.2** Update How I Work section
- [ ] **10.5.3** Update What I Work With list (8 items including Women's Mental Health)
- [ ] **10.5.4** Update Who I Work With section (individuals, adolescents, couples)

### Phase 10.6: Psychology Today Badge Integration (1 task)

- [ ] **10.6.1** Add Psychology Today verification badge
  - **AC:** Badge displays and links to verified profile

---

## MEDIUM Priority

### Phase 10.7: Services Page Visual Redesign (2 tasks)

- [ ] **10.7.1** Add responsive image grid (3-4 images, flexible layout)
  - **Skill:** `~/code/brain/skills/domains/websites/design/spacing-layout.md`
- [ ] **10.7.2** Review and fix visual flow
  - **Skill:** `~/code/brain/skills/domains/websites/architecture/section-composer.md`

### Phase 10.8: FAQ Section Update (1 task)

- [ ] **10.8.1** Convert existing FAQ to accordion style with new questions
  - **Goal:** Click-to-expand accordion, add 3 new questions at top, remove "free consultation" question
  - **Skill:** `~/code/brain/skills/domains/websites/architecture/section-composer.md`
  - **AC:** 6 questions total, accordion style, no "free consultation" mention

### Phase 10.9: Formspree Preparation (1 task)

- [ ] **10.9.1** Prepare contact form for Formspree integration
  - **AC:** Clear placeholder for endpoint

---

## LOW Priority

*No low priority tasks currently.*

---

## BLOCKED (Human Required)

- [ ] **Formspree Setup** - Create account with Jacqui's email, get endpoint code
- [ ] **Rate Information** - Fill in XXX placeholders in FAQ with actual rates
- [ ] **Content Review** - Client approval of all content changes
- [ ] **Domain/DNS** - Configure domain to point to GitHub Pages
- [ ] **Go Live** - Final deployment and verification
- [ ] **Post-Launch** - Monitor for issues

---

## Key Decisions

| Decision | Choice |
|----------|--------|
| Primary CTA | "Book a Consultation" |
| Secondary CTA | "Get in Touch" / "Send a Query" |
| Phone format | +27 76 605 4736 |
| Image grid | Flexible 3-4 images |
| Rate in FAQ | Use XXX placeholders |
| FAQ location | Keep on Contact page (handles objections before form) |

---

## Available Images

- `image5_chair.webp` - existing
- `image6_chairs.webp` - existing
- `therapy_office_1.webp` - NEW (downloaded)
- `therapy_office_2.webp` - NEW (downloaded)

**Do NOT use:** `image3_mirror.webp`

---

## MAINTENANCE

*No maintenance items currently pending.*
