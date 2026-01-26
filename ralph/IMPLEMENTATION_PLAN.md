# Implementation Plan - Jacqui Chowles Website

Last updated: 2026-01-26 23:20:00

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

## Source Copy (Authoritative)

- `cortex/webste_notes_from_jacqui.md` is the authoritative source copy.
- Ralph must **copy/paste** the relevant sections into the pages with **minimal edits only** (UK spelling, minor clarity, light SEO).
- Do **not** replace Jacqui’s writing with generic marketing copy.

**Enforcement / QA:**

- After implementing copy changes, run:
  - `diff -u cortex/webste_notes_from_jacqui.md <(cat src/pages/about.astro src/components/Hero.astro src/pages/contact.astro src/pages/services.astro src/pages/index.astro) | head` (manual spot check)
  - plus targeted `grep` checks in the acceptance criteria below.

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

- [ ] **10.2.2** Align email address across site
  - **Goal:** Use a single primary email address consistently (Footer + Contact page)
  - **AC:** `grep -R "mailto:" src/` shows one email address only


### Phase 10.3: CTA Updates - Remove Free Consultation (2 tasks)

- [ ] **10.3.1** Remove all "free consultation" mentions site-wide
  - **Goal:** Update all pages/components to remove "free" from consultation references
  - **Implementation notes:** Replace with "initial consultation" in explanatory text (see Contact + Services blocks in `cortex/webste_notes_from_jacqui.md`).
  - **Skill:** `~/code/brain/skills/domains/websites/copywriting/cta-optimizer.md`
  - **AC:** `grep -ri "free.*consult\|free.*15" src/` returns nothing

- [ ] **10.3.2** Fix about page CTA button contrast
  - **Goal:** Change button to white on purple background
  - **AC:** Button visually distinct from purple section

### Phase 10.4: Homepage Content Update (2 tasks)

- [ ] **10.4.1** Update homepage terminology from "counselling psychology" to "therapy"
  - **Goal:** Change hero/intro text to use "therapy" terminology consistently
  - **Implementation notes:** Use the preferred hero subheadline from `cortex/webste_notes_from_jacqui.md`.
  - **Skill:** `~/code/brain/skills/domains/websites/copywriting/value-proposition.md`
  - **AC:** `grep -R "counselling psychology" src/` returns nothing

- [ ] **10.4.2** Align homepage "What I work with" to Jacqui's 8-item list
  - **Goal:** Ensure homepage list includes Women's Mental Health & Perinatal Wellbeing and reflects Jacqui's wording closely
  - **AC:** Homepage shows all 8 areas from `cortex/webste_notes_from_jacqui.md`


### Phase 10.5: About Page Content Updates (6 tasks)

- [ ] **10.5.1** Update About Me bio section to match Jacqui's source notes
  - **Goal:** Replace generic bio with Jacqui's "About me" text from `cortex/webste_notes_from_jacqui.md` (light SEO only)
  - **Implementation notes:** Copy/paste the full "About me" block and keep sentence structure.
  - **AC:** About page contains: "University of the Witwatersrand", "Centre for the Study of Violence and Reconciliation (CSVR)", "The Gambia", "United Nations Development Programme (UNDP)", and "Johannesburg, South Africa"

- [ ] **10.5.2** Update How I Work section to match Jacqui's source notes
  - **Goal:** Use Jacqui's wording (psychodynamic; deeper patterns; flexible/time-limited vs long-term; DBT/attachment/relational/solution-focused)
  - **Implementation notes:** Copy/paste the full "How I work" block from `cortex/webste_notes_from_jacqui.md`.
  - **AC:** `grep -R "Dialectical Behaviour Therapy (DBT)\|attachment theory\|solution-focused interventions\|longer-term, exploratory work" src/pages/about.astro` returns matches

- [ ] **10.5.3** Update What I Work With list to match Jacqui's 8 items
  - **Goal:** Use Jacqui's headings and UK spellings (Generalised; programme)
  - **Implementation notes:** Preserve the 9 headings exactly as in the source (including Couples / Relationship Therapy).
  - **AC:** About page contains all headings:
    - Trauma, PTSD & Complex Trauma
    - Depression
    - Anxiety
    - Women’s Mental Health & Perinatal Wellbeing
    - Grief & Loss
    - Burnout & Compassion Fatigue
    - Life Transitions & Adjustment
    - Identity & Sense of Self
    - Couples / Relationship Therapy

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

## MEDIUM Priority

### Phase 10.7: Services Page Visual Redesign (2 tasks)

- [ ] **10.7.1** Implement desktop zig-zag layout (text/image alternating)
  - **Goal:** Alternate text-left/image-right then image-left/text-right for Online + In-person sections; mobile stacks naturally
  - **Implementation notes (required pattern):**
    - Each of Online + In-person sections must use: `grid md:grid-cols-2 gap-10 items-center`
    - Alternate order using `md:order-2` on the image or text block
    - Images should be constrained: `w-full max-w-md` (or similar) and use `rounded-lg shadow-lg object-cover`
    - Avoid a single standalone "Therapy Spaces" image grid; use images inline to break up text
  - **Skill:** `~/code/brain/skills/domains/websites/design/spacing-layout.md`, `~/code/brain/skills/domains/websites/architecture/section-composer.md`
  - **AC:** Desktop shows zig-zag layout for Online + In-person; mobile stacks image then text naturally

- [ ] **10.7.2** Reduce text-wall feel on Services page
  - **Goal:** Break long prose with visual anchors (images/cards) while preserving content
  - **AC:** No section exceeds ~2 short paragraphs without a visual break (card, list, or image)


### Phase 10.8: FAQ Section Update (1 task)

### Phase 10.8b: Contact Page Desktop Layout Fix (2 tasks)

- [ ] **10.8b.1** Fix Contact page desktop grid structure
  - **Goal:** Ensure "Contact Information" and "What happens next?" remain together in the left column on desktop
  - **Implementation notes:**
    - Keep both blocks inside the same left-column wrapper (e.g., `<div class="space-y-10"> ... </div>`)
    - Ensure the md:grid wrapper closes only after both columns are defined (fix any mis-nested `</div>`)
  - **AC:** On md+ widths, left column contains both blocks; right column contains form; no unexpected stacking

- [ ] **10.8b.2** Reduce Contact form visual dominance on desktop
  - **Goal:** Wrap form in a card and constrain max width so it doesn't feel full-bleed
  - **Implementation notes (required):**
    - Wrap the form in a card: `bg-white rounded-lg shadow-sm border border-gray-200 p-6 md:p-8`
    - Constrain form container: `max-w-xl w-full md:ml-auto`
  - **AC:** Form is visually contained (card) and does not feel full-width on desktop


### Phase 10.9: Formspree Preparation (1 task)

### Phase 10.10: SEO Enhancements (2 tasks)

- [ ] **10.10.1** Add canonical URLs + Open Graph + Twitter card meta
  - **Goal:** Add `<link rel="canonical">` and OG/Twitter meta tags via `BaseLayout.astro`
  - **Implementation notes:**
    - Canonical must be absolute (use site URL + `Astro.url.pathname`)
    - OG should include at minimum: `og:title`, `og:description`, `og:type`, `og:url`
    - Twitter should include at minimum: `twitter:card`, `twitter:title`, `twitter:description`
  - **AC:** Built HTML contains canonical + OG + Twitter meta on all pages

- [ ] **10.10.2** Add JSON-LD structured data
  - **Goal:** Add Person/LocalBusiness schema for Jacqui + practice location/contact
  - **Implementation notes:** Include at minimum: name, jobTitle, address (Roodepoort, Gauteng), telephone, url
  - **AC:** Built HTML contains an `application/ld+json` script with schema.org JSON-LD


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

---

## Completed (archive)


---

## Completed (archive)

- [x] **10.2.1** Update phone number and add physical address
  - **Goal:** Replace phone with +27 76 605 4736, update WhatsApp link, add physical address to contact page
  - **AC:** `grep -r "76 605 4736" src/` shows correct number, address visible on contact page

- [x] **10.6.1** Add Psychology Today verification badge
  - **AC:** Badge displays and links to verified profile

---

- [x] **10.8.1** Convert existing FAQ to accordion style with new questions
  - **Goal:** Click-to-expand accordion, add 3 new questions at top, remove "free consultation" question
  - **Skill:** `~/code/brain/skills/domains/websites/architecture/section-composer.md`
  - **AC:** 6 questions total, accordion style, no "free consultation" mention

- [x] **10.9.1** Prepare contact form for Formspree integration
  - **AC:** Clear placeholder for endpoint



