# Implementation Plan - Jacqui Chowles Website

Last updated: 2026-01-26 21:15:00

## Current State Summary

- **Homepage:** Built with hero, services overview, trust badges, CTA section
- **About Page:** Bio, How I Work, What I Work With sections - needs content update
- **Services Page:** Text-only, needs images and FAQ section
- **Contact Page:** Form exists but needs Formspree integration
- **Components:** Header, Footer, Hero, CTASection, QuoteBanner, ServiceCard, TrustBadges
- **Styling:** Tailwind CSS with purple brand colours, responsive
- **Images:** Banners done, stock office images downloaded (therapy_office_1.webp, therapy_office_2.webp)

**Blockers:** Client content updates needed, Formspree requires Jacqui's email

---

## HIGH Priority

### Phase 10.1: UK English Spelling Fixes (3 tasks)

- [ ] **10.1.1** Fix UK spelling in services.astro
  - **Goal:** Replace "specialized" → "specialised", "organizations" → "organisations"
  - **AC:** `grep -i "ize\|ization" src/pages/services.astro` returns nothing

- [ ] **10.1.2** Fix UK spelling in about.astro
  - **Goal:** Replace "specializing" → "specialising", "organizations" → "organisations", "generalized" → "generalised"
  - **AC:** `grep -i "ize\|ization" src/pages/about.astro` returns nothing

- [ ] **10.1.3** Fix UK spelling in index.astro
  - **Goal:** Replace "organizational" → "organisational", "generalized" → "generalised", "organizations" → "organisations"
  - **AC:** `grep -i "ize\|ization" src/pages/index.astro` returns nothing

### Phase 10.2: Contact Details Update (2 tasks)

- [ ] **10.2.1** Update phone number to +27 76 605 4736
  - **Goal:** Replace current phone number in contact.astro and Footer.astro, update WhatsApp link to https://wa.me/27766054736
  - **AC:** `grep -r "76 605 4736" src/` shows correct number in both files

- [ ] **10.2.2** Add physical address to contact page
  - **Goal:** Add "Argyle Square, Tamarisk Street, Weltevreden Park, Roodepoort, Gauteng" to contact information section
  - **AC:** Address visible on contact page, formatted nicely

### Phase 10.3: CTA Updates - Remove Free Consultation (6 tasks)

- [ ] **10.3.1** Update CTASection component
  - **Goal:** Change "Book your free consultation" → "Book a Consultation", remove "free 15-minute" from description text
  - **AC:** `grep -i "free" src/components/CTASection.astro` returns nothing

- [ ] **10.3.2** Remove free consultation mentions from index.astro
  - **Goal:** Replace all "free consultation" with "consultation" or "Book a Consultation"
  - **AC:** `grep -i "free.*consult" src/pages/index.astro` returns nothing

- [ ] **10.3.3** Remove free consultation mentions from services.astro
  - **Goal:** Replace all "free consultation" with appropriate CTA text
  - **AC:** `grep -i "free.*consult" src/pages/services.astro` returns nothing

- [ ] **10.3.4** Remove free consultation mentions from contact.astro
  - **Goal:** Replace all "free consultation" with "consultation" or "Get in Touch"
  - **AC:** `grep -i "free.*consult" src/pages/contact.astro` returns nothing

- [ ] **10.3.5** Remove free consultation mentions from about.astro
  - **Goal:** Replace all "free consultation" with appropriate CTA text
  - **AC:** `grep -i "free.*consult" src/pages/about.astro` returns nothing

- [ ] **10.3.6** Fix about page CTA button contrast
  - **Goal:** Change button from bg-purple-brand to bg-white text-purple-brand (lines ~320-325) so it's visible on purple background
  - **AC:** Button uses white background, visually distinct from purple section

### Phase 10.4: Homepage Content Update (1 task)

- [ ] **10.4.1** Update homepage terminology from "counselling psychology" to "therapy"
  - **Goal:** Change hero/intro text to use "therapy" instead of "counselling psychology" where appropriate
  - **AC:** Hero section uses "therapy" terminology, consultancy services section unchanged

### Phase 10.5: About Page Content Updates (4 tasks)

- [ ] **10.5.1** Update About Me bio section
  - **Goal:** Replace current bio with Jacqui's new text (see REFERENCE section)
  - **AC:** Bio mentions hospitals, government facilities, organisations, and private practice experience

- [ ] **10.5.2** Update How I Work section
  - **Goal:** Replace current approach text with Jacqui's new text (see REFERENCE section)
  - **AC:** Section mentions psychodynamic therapy, EMDR, mindfulness-based techniques, and relational therapy

- [ ] **10.5.3** Update What I Work With list to include 8 items
  - **Goal:** Ensure list includes: Anxiety & Stress, Depression, Trauma & PTSD, Grief & Loss, Relationship Difficulties, Life Transitions, Self-Esteem & Identity, Women's Mental Health & Perinatal Wellbeing
  - **AC:** All 8 items present, "Women's Mental Health & Perinatal Wellbeing" is included

- [ ] **10.5.4** Update Who I Work With section
  - **Goal:** Specify "Individuals, adolescents, and couples"
  - **AC:** All three client types mentioned in the section

### Phase 10.6: Psychology Today Badge Integration (1 task)

- [ ] **10.6.1** Add Psychology Today verification badge
  - **Goal:** Embed official PT badge in Footer or About page credentials section using provided embed code
  - **AC:** Badge displays correctly and links to https://www.psychologytoday.com/za/counselling/jacqui-leigh-chowles-roodepoort-gt/989696

---

## MEDIUM Priority

### Phase 10.7: Services Page Visual Redesign (2 tasks)

- [ ] **10.7.1** Add responsive image grid to services page
  - **Goal:** Create CSS grid section using image5_chair.webp, image6_chairs.webp, therapy_office_1.webp, therapy_office_2.webp with auto-fit layout that works with 3 or 4 images
  - **AC:** Images display in responsive grid, layout doesn't break if one image removed

- [ ] **10.7.2** Review and fix services page visual flow
  - **Goal:** Ensure consistent spacing, good mobile appearance, proper section order
  - **AC:** Page looks good on mobile (375px) and desktop (1200px+)

### Phase 10.8: FAQ Section (3 tasks)

- [ ] **10.8.1** Create FAQ component
  - **Goal:** Create src/components/FAQ.astro with accordion or Q&A list structure for 3 questions
  - **AC:** Component exists, is accessible (proper headings/ARIA), responsive

- [ ] **10.8.2** Draft FAQ content for 3 questions
  - **Goal:** Write answers for "Do I need therapy?" (signs/benefits), "What's the process?" (consultation → sessions → progress), "What's the rate?" (use XXX placeholders)
  - **AC:** All 3 questions have thoughtful content, rate question uses "R XXX" placeholder format

- [ ] **10.8.3** Add FAQ component to services page
  - **Goal:** Import and place FAQ component after services list, before CTA section
  - **AC:** FAQ section visible on services page in correct position

### Phase 10.9: Formspree Preparation (1 task)

- [ ] **10.9.1** Prepare contact form for Formspree integration
  - **Goal:** Update form action to "YOUR_FORMSPREE_ENDPOINT" placeholder, add method="POST", add HTML comment explaining what to replace
  - **AC:** Form has clear placeholder comment, structure ready for Formspree endpoint

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
