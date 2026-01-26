# Implementation Plan - Jacqui Chowles Website

Last updated: 2026-01-26 22:45:00

## Current State Summary

- **Homepage:** Built with hero, services overview, trust badges, CTA section
- **About Page:** Needs copy update to match Jacqui's source notes (with light SEO, UK spelling)
- **Services Page:** Needs visual flow update (desktop zig-zag text/image sections) to avoid text walls
- **Contact Page:** Desktop grid needs layout fix (keep "What happens next" in left column); form needs better desktop sizing

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

### Phase 10.2: Contact Details Update (2 tasks)

- [ ] **10.2.1** Update phone number and add physical address
  - **Goal:** Replace phone with +27 76 605 4736, update WhatsApp link, add physical address to contact page
  - **AC:** `grep -r "76 605 4736" src/` shows correct number, address visible on contact page

- [ ] **10.2.2** Align email address across site
  - **Goal:** Use a single primary email address consistently (Footer + Contact page)
  - **AC:** `grep -R "mailto:" src/` shows one email address only


### Phase 10.3: CTA Updates - Remove Free Consultation (2 tasks)

- [ ] **10.3.1** Remove all "free consultation" mentions site-wide
  - **Goal:** Update all pages/components to remove "free" from consultation references
  - **Skill:** `~/code/brain/skills/domains/websites/copywriting/cta-optimizer.md`
  - **AC:** `grep -ri "free.*consult\|free.*15" src/` returns nothing

- [ ] **10.3.2** Fix about page CTA button contrast
  - **Goal:** Change button to white on purple background
  - **AC:** Button visually distinct from purple section

### Phase 10.4: Homepage Content Update (2 tasks)

- [ ] **10.4.1** Update homepage terminology from "counselling psychology" to "therapy"
  - **Goal:** Change hero/intro text to use "therapy" terminology consistently
  - **Skill:** `~/code/brain/skills/domains/websites/copywriting/value-proposition.md`
  - **AC:** `grep -R "counselling psychology" src/` returns nothing

- [ ] **10.4.2** Align homepage "What I work with" to Jacqui's 8-item list
  - **Goal:** Ensure homepage list includes Women's Mental Health & Perinatal Wellbeing and reflects Jacqui's wording closely
  - **AC:** Homepage shows all 8 areas from `cortex/webste_notes_from_jacqui.md`


### Phase 10.5: About Page Content Updates (6 tasks)

- [ ] **10.5.1** Update About Me bio section to match Jacqui's source notes
  - **Goal:** Replace generic bio with Jacqui's "About me" text from `cortex/webste_notes_from_jacqui.md` (light SEO only)
  - **AC:** About page includes Wits, CSVR, The Gambia, UNDP, Johannesburg, in-person + online

- [ ] **10.5.2** Update How I Work section to match Jacqui's source notes
  - **Goal:** Use Jacqui's wording (psychodynamic; deeper patterns; flexible/time-limited vs long-term; DBT/attachment/relational/solution-focused)
  - **AC:** Those keywords/phrases are present and readable on About page

- [ ] **10.5.3** Update What I Work With list to match Jacqui's 8 items
  - **Goal:** Use Jacqui's headings and UK spellings (Generalised; programme)
  - **AC:** List matches the 8 headings from `cortex/webste_notes_from_jacqui.md`

- [ ] **10.5.4** Update Who I Work With section (individuals, adolescents, couples)
  - **Goal:** Use Jacqui's wording as closely as possible
  - **AC:** Section text matches Jacqui's sentence with minimal edits

- [ ] **10.5.5** Fix HPCSA registration number across site
  - **Goal:** Update HPCSA number to **PS0133779** (source: Jacqui notes)
  - **AC:** `grep -R "PS0" src/` shows PS0133779 only

- [ ] **10.5.6** UK English pass on About page
  - **Goal:** Ensure UK spelling consistency (e.g., generalised, programmes)
  - **AC:** No "Generalized" remains on About page


### Phase 10.6: Psychology Today Badge Integration (1 task)

- [ ] **10.6.1** Add Psychology Today verification badge
  - **AC:** Badge displays and links to verified profile

---

## MEDIUM Priority

### Phase 10.7: Services Page Visual Redesign (2 tasks)

- [ ] **10.7.1** Implement desktop zig-zag layout (text/image alternating)
  - **Goal:** Alternate text-left/image-right then image-left/text-right for Online + In-person sections; mobile stacks naturally
  - **Skill:** `~/code/brain/skills/domains/websites/design/spacing-layout.md`, `~/code/brain/skills/domains/websites/architecture/section-composer.md`
  - **AC:** On desktop, Online and In-person sections each display as 2-column blocks with alternating order; no single "all images" block is required

- [ ] **10.7.2** Reduce text-wall feel on Services page
  - **Goal:** Break long prose with visual anchors (images/cards) while preserving content
  - **AC:** No section exceeds ~2 short paragraphs without a visual break (card, list, or image)


### Phase 10.8: FAQ Section Update (1 task)

- [ ] **10.8.1** Convert existing FAQ to accordion style with new questions
  - **Goal:** Click-to-expand accordion, add 3 new questions at top, remove "free consultation" question
  - **Skill:** `~/code/brain/skills/domains/websites/architecture/section-composer.md`
  - **AC:** 6 questions total, accordion style, no "free consultation" mention

### Phase 10.8b: Contact Page Desktop Layout Fix (2 tasks)

- [ ] **10.8b.1** Fix Contact page desktop grid structure
  - **Goal:** Ensure "Contact Information" and "What happens next?" remain together in the left column on desktop
  - **AC:** On md+ widths, left column contains both blocks; right column contains form; no unexpected stacking

- [ ] **10.8b.2** Reduce Contact form visual dominance on desktop
  - **Goal:** Wrap form in a card and constrain max width so it doesn't feel full-bleed
  - **AC:** Form container has max width (e.g., max-w-xl) and looks balanced next to contact info


### Phase 10.9: Formspree Preparation (1 task)

- [ ] **10.9.1** Prepare contact form for Formspree integration
  - **AC:** Clear placeholder for endpoint

### Phase 10.10: SEO Enhancements (2 tasks)

- [ ] **10.10.1** Add canonical URLs + Open Graph + Twitter card meta
  - **Goal:** Add `<link rel="canonical">` and OG/Twitter meta tags via `BaseLayout.astro`
  - **AC:** Built HTML contains canonical + og:title/og:description + twitter:card on all pages

- [ ] **10.10.2** Add JSON-LD structured data
  - **Goal:** Add Person/LocalBusiness schema for Jacqui + practice location/contact
  - **AC:** Built HTML contains a `application/ld+json` script with schema.org JSON-LD


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
| Primary CTA | "Book a consultation" |
| Secondary CTA | "Get in touch" / "Send a message" |
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
- `image3_mirror.webp` - allowed (approved)



---

## MAINTENANCE

*No maintenance items currently pending.*
