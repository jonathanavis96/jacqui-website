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

### Phase 10.1: UK English Spelling Fixes

- [x] **10.1.1** Fix all UK spellings across site
  - **Goal:** Replace US spellings with UK equivalents in services.astro, about.astro, index.astro
  - **Changes:**
    - "specialized" → "specialised"
    - "specializing" → "specialising"
    - "organizations" → "organisations"
    - "organizational" → "organisational"
    - "generalized" → "generalised"
  - **AC:** `grep -ri "ize\|ization" src/pages/` returns nothing

### Phase 10.2: Contact Details Update

- [x] **10.2.1** Update phone number and add physical address
  - **Goal:** Replace phone with +27 76 605 4736 in contact.astro and Footer.astro, update WhatsApp link to <https://wa.me/27766054736>, add address "Argyle Square, Tamarisk Street, Weltevreden Park, Roodepoort, Gauteng" to contact page
  - **AC:** `grep -r "76 605 4736" src/` shows correct number, address visible on contact page

### Phase 10.3: CTA Updates (Remove Free Consultation)

- [x] **10.3.1** Remove all "free consultation" mentions site-wide
  - **Goal:** Update CTASection.astro, index.astro, services.astro, contact.astro, about.astro to remove "free" from all consultation references
  - **Skill:** `~/code/brain/skills/domains/websites/copywriting/cta-optimizer.md`
  - **New CTAs:** Primary = "Book a Consultation", Secondary = "Get in Touch" / "Send a Query"
  - **AC:** `grep -ri "free.*consult\|free.*15" src/` returns nothing

- [x] **10.3.2** Fix about page CTA button contrast
  - **Goal:** Change button from bg-purple-brand to bg-white text-purple-brand (lines ~320-325) so it's visible on purple background
  - **AC:** Button uses white background, visually distinct from purple section

### Phase 10.4: Homepage Content Update

- [x] **10.4.1** Update homepage terminology from "counselling psychology" to "therapy"
  - **Goal:** Change hero/intro text to use "therapy" instead of "counselling psychology" where appropriate
  - **Skill:** `~/code/brain/skills/domains/websites/copywriting/value-proposition.md`
  - **AC:** Hero section uses "therapy" terminology, consultancy services section unchanged

### Phase 10.5: About Page Content Updates

- [x] **10.5.1** Update About Me bio section
  - **Goal:** Replace current bio with Jacqui's new text (see REFERENCE section)
  - **AC:** Bio mentions hospitals, government facilities, organisations, and private practice experience

- [x] **10.5.2** Update How I Work section
  - **Goal:** Replace current approach text with Jacqui's new text (see REFERENCE section)
  - **AC:** Section mentions psychodynamic therapy, EMDR, mindfulness-based techniques, and relational therapy

- [x] **10.5.3** Update What I Work With list to include 8 items
  - **Goal:** Ensure list includes: Anxiety & Stress, Depression, Trauma & PTSD, Grief & Loss, Relationship Difficulties, Life Transitions, Self-Esteem & Identity, Women's Mental Health & Perinatal Wellbeing
  - **AC:** All 8 items present, "Women's Mental Health & Perinatal Wellbeing" is included

- [x] **10.5.4** Update Who I Work With section
  - **Goal:** Specify "Individuals, adolescents, and couples"
  - **AC:** All three client types mentioned in the section

### Phase 10.6: Psychology Today Badge Integration

- [ ] **10.6.1** Add Psychology Today verification badge
  - **Goal:** Embed official PT badge in Footer or About page credentials section using provided embed code (see REFERENCE section)
  - **AC:** Badge displays correctly and links to <https://www.psychologytoday.com/za/counselling/jacqui-leigh-chowles-roodepoort-gt/989696>

---

## MEDIUM Priority

### Phase 10.7: Services Page Visual Redesign

- [ ] **10.7.1** Add responsive image grid to services page
  - **Goal:** Create CSS grid section using image5_chair.webp, image6_chairs.webp, therapy_office_1.webp, therapy_office_2.webp with auto-fit layout that works with 3 or 4 images
  - **Skill:** `~/code/brain/skills/domains/websites/design/spacing-layout.md`
  - **AC:** Images display in responsive grid, layout doesn't break if one image removed

- [ ] **10.7.2** Review and fix services page visual flow
  - **Goal:** Ensure consistent spacing, good mobile appearance, proper section order
  - **Skill:** `~/code/brain/skills/domains/websites/architecture/section-composer.md`
  - **AC:** Page looks good on mobile (375px) and desktop (1200px+)

### Phase 10.8: FAQ Section Update

- [ ] **10.8.1** Convert existing FAQ to accordion style with new questions
  - **Goal:** Update FAQ section on contact.astro - convert to click-to-expand accordion, add 3 new questions at top, remove "free consultation" question
  - **Skill:** `~/code/brain/skills/domains/websites/architecture/section-composer.md` (FAQ handles objections near bottom, before CTA)
  - **New questions to add at top:**
    1. "Is therapy right for me?" (or similar - addresses "do I need therapy?")
    2. "What does the process look like?" (or similar - addresses "what's the process?")
    3. "What are your rates?" (use XXX placeholders for amounts)
  - **Existing questions to keep:** "How do I book?", "How long is therapy?", "Medical aid?"
  - **Remove:** "Do you offer a free consultation?" question
  - **AC:** FAQ is accordion style (click heading to show/hide answer), has 6 questions total, no "free consultation" mention

### Phase 10.9: Formspree Preparation

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

## REFERENCE: New Content from Jacqui

### Contact Details

- **Phone:** +27 76 605 4736
- **WhatsApp:** <https://wa.me/27766054736>
- **Address:** Argyle Square, Tamarisk Street, Weltevreden Park, Roodepoort, Gauteng
- **HPCSA:** PS0133779

### About Me Bio

> I'm a registered Counselling Psychologist with a deep passion for helping people heal and grow. Over the years, I've had the privilege of working in various settings—hospitals, government facilities, organisations, and private practice—which has given me a broad understanding of human challenges and resilience.
>
> My approach is grounded in warmth, empathy, and a genuine belief in your ability to navigate life's difficulties. Therapy, for me, is about creating a safe, supportive space where you can explore your thoughts and emotions at your own pace. I tailor my therapeutic style to suit your unique needs, drawing from evidence-based approaches like psychodynamic and trauma-focused therapy, EMDR, mindfulness, and relational techniques.
>
> Whether you're dealing with anxiety, depression, trauma, relationship difficulties, or life transitions, I'm here to walk alongside you as you work toward healing and personal growth.

### How I Work

> I believe therapy works best when it feels collaborative and supportive. My style is warm, empathetic, and non-judgmental—I aim to create a space where you feel truly heard and understood.
>
> I draw from a range of therapeutic approaches, including psychodynamic therapy, EMDR, mindfulness-based techniques, and relational therapy. This allows me to tailor our sessions to what works best for you, whether that's exploring past experiences, building coping strategies, or focusing on the present moment.
>
> Our work together is guided by your goals. Whether you're looking to process a difficult experience, manage overwhelming emotions, or simply feel more like yourself again, I'll meet you where you are and support you every step of the way.

### What I Work With (8 items)

1. Anxiety & Stress
2. Depression
3. Trauma & PTSD
4. Grief & Loss
5. Relationship Difficulties
6. Life Transitions
7. Self-Esteem & Identity
8. Women's Mental Health & Perinatal Wellbeing

### Who I Work With

Individuals, adolescents, and couples

### Psychology Today Embed Code

```html
<a href="https://www.psychologytoday.com/za/counselling/jacqui-leigh-chowles-roodepoort-gt/989696?utm_source=PT&utm_medium=Verified&utm_campaign=PT_Badge_Profile" class="sx-verified-seal" target="_blank" rel="noopener"></a>
<script type="text/javascript" src="https://member.psychologytoday.com/verified-seal.js" data-badge="13" data-id="989696" data-code="aHR0cHM6Ly93d3cucHN5Y2hvbG9neXRvZGF5LmNvbS9hcGkvdmVyaWZpZWQtc2VhbC9zZWFscy9bQkFER0VdL3Byb2ZpbGUvW1BST0ZJTEVfSURdP2NhbGxiYWNrPXN4Y2FsbGJhY2s="></script>
```

---

## Phase 11: Markdown Lint Fixes

### Phase 11.1: cortex/AGENTS.md Lint Fixes

- [ ] **11.1.1** Fix MD032/blanks-around-lists in cortex/AGENTS.md (lines 33, 38, 96)
  - **AC:** `markdownlint cortex/AGENTS.md` passes (no MD032 errors)

- [ ] **11.1.2** Fix MD060/table-column-style in cortex/AGENTS.md (line 50)
  - **AC:** `markdownlint cortex/AGENTS.md` passes (no MD060 errors)

- [ ] **11.1.3** Fix MD034/no-bare-urls in cortex/AGENTS.md (line 93)
  - **AC:** `markdownlint cortex/AGENTS.md` passes (no MD034 errors)

### Phase 11.2: cortex/CORTEX_SYSTEM_PROMPT.md Lint Fixes

- [ ] **11.2.1** Fix MD013/line-length in cortex/CORTEX_SYSTEM_PROMPT.md (lines 7, 46, 48)
  - **AC:** `markdownlint cortex/CORTEX_SYSTEM_PROMPT.md` passes (no MD013 errors)

- [ ] **11.2.2** Fix MD022/blanks-around-headings in cortex/CORTEX_SYSTEM_PROMPT.md (lines 11, 17, 23, 52, 57)
  - **AC:** `markdownlint cortex/CORTEX_SYSTEM_PROMPT.md` passes (no MD022 errors)

- [ ] **11.2.3** Fix MD032/blanks-around-lists in cortex/CORTEX_SYSTEM_PROMPT.md (lines 12, 18, 24, 53, 58, 73)
  - **AC:** `markdownlint cortex/CORTEX_SYSTEM_PROMPT.md` passes (no MD032 errors)

### Phase 11.3: cortex/DECISIONS.md Lint Fixes

- [ ] **11.3.1** Fix MD032/blanks-around-lists in cortex/DECISIONS.md (lines 15, 24, 30, 35, 60, 73)
  - **AC:** `markdownlint cortex/DECISIONS.md` passes (no MD032 errors)

- [ ] **11.3.2** Fix MD058/blanks-around-tables in cortex/DECISIONS.md (line 52)
  - **AC:** `markdownlint cortex/DECISIONS.md` passes (no MD058 errors)

- [ ] **11.3.3** Fix MD060/table-column-style in cortex/DECISIONS.md (line 53)
  - **AC:** `markdownlint cortex/DECISIONS.md` passes (no MD060 errors)

- [ ] **11.3.4** Fix MD036/no-emphasis-as-heading in cortex/DECISIONS.md (line 89)
  - **AC:** `markdownlint cortex/DECISIONS.md` passes (no MD036 errors)

### Phase 11.4: cortex/GAP_CAPTURE.md Lint Fixes

- [ ] **11.4.1** Fix MD013/line-length in cortex/GAP_CAPTURE.md (line 3)
  - **AC:** `markdownlint cortex/GAP_CAPTURE.md` passes (no MD013 errors)

### Phase 11.5: cortex/IMPLEMENTATION_PLAN.md Lint Fixes

- [ ] **11.5.1** Fix MD013/line-length in cortex/IMPLEMENTATION_PLAN.md (line 13)
  - **AC:** `markdownlint cortex/IMPLEMENTATION_PLAN.md` passes (no MD013 errors)

- [ ] **11.5.2** Fix MD060/table-column-style in cortex/IMPLEMENTATION_PLAN.md (line 22)
  - **AC:** `markdownlint cortex/IMPLEMENTATION_PLAN.md` passes (no MD060 errors)

### Phase 11.6: cortex/websites_notes_v2.md Lint Fixes

- [ ] **11.6.1** Fix MD004/ul-style in cortex/websites_notes_v2.md (lines 3, 5, 7-10, 12, 14-15, 17-18, 20, 22-23, 25-27, 29, 31-33, 35, 37, 39, 41)
  - **AC:** `markdownlint cortex/websites_notes_v2.md` passes (no MD004 errors)

### Phase 11.7: ralph/NEURONS.md Lint Fixes

- [ ] **11.7.1** Fix MD040/fenced-code-language in ralph/NEURONS.md (lines 9, 84)
  - **AC:** `markdownlint ralph/NEURONS.md` passes (no MD040 errors)

### Phase 11.8: ralph/STATUS_REPORT.md Lint Fixes

- [ ] **11.8.1** Fix MD040/fenced-code-language in ralph/STATUS_REPORT.md (line 85)
  - **AC:** `markdownlint ralph/STATUS_REPORT.md` passes (no MD040 errors)

---

## MAINTENANCE

*No maintenance items currently pending.*
