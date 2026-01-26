# Section Blueprints - Jacqui Chowles Website

Detailed section-by-section breakdown of all 4 pages. Serves as both implementation guide and documentation of the built structure.

**Status:** Complete (documented from built pages)  
**Last Updated:** 2026-01-23

---

## Page 1: Homepage (`/`)

**Purpose:** Convert visitors quickly with clear value proposition and trust signals  
**File:** `src/pages/index.astro`

### Section Breakdown

#### 1. Hero Section

- **Component:** `Hero.astro`
- **Goal:** Immediate clarity on who Jacqui is and how she helps
- **Content:**
  - Headline: Professional identity + primary value prop
  - Subheadline: Brief description of services
  - Primary CTA: "Get in touch" → `/contact`
  - Secondary CTA: "Learn more" → `/about`
- **Visual:** Hero background (gradient or image placeholder)
- **Design notes:** Mobile-first, large touch targets for CTAs

#### 2. Services Overview Section

- **Component:** Inline section with `ServiceCard.astro` (×3)
- **Goal:** Show breadth of offerings at a glance
- **Content:**
  - Section heading: "How I can help"
  - Intro text: "Whether you're working through trauma, navigating life transitions, or seeking support..."
  - 3 service cards:
    1. **Online Therapy** (💻) → `/services#online`
    2. **In-Person Therapy** (🏠) → `/services#in-person`
    3. **Training & Consultancy** (📚) → `/services#consultancy`
- **Design notes:** 3-column grid on desktop, stacked on mobile

#### 3. "What I Work With" Section

- **Component:** Inline checklist section
- **Goal:** SEO + visitor self-qualification ("this is for me")
- **Content:**
  - Section heading: "What I work with"
  - 8 focus areas with icons (✓) and descriptions:
    - Trauma, PTSD, Complex PTSD
    - Depression (including postpartum)
    - Anxiety
    - Grief & Loss
    - Life Transitions
    - Identity & Self-exploration
    - Burnout
    - Couples Therapy
- **Design notes:** 2-column grid, scannable format

#### 4. Trust Badges Section

- **Component:** `TrustBadges.astro`
- **Goal:** Establish credibility and professional legitimacy
- **Content:**
  - HPCSA registration number + logo
  - Psychology Today verification badge (placeholder until client provides code)
  - Professional credentials text
- **Design notes:** Centered, prominent but not overwhelming

#### 5. Final CTA Section

- **Component:** `CTASection.astro`
- **Goal:** Final conversion opportunity before footer
- **Content:**
  - Headline: "Ready to take the first step?"
  - Subtext: Reassuring message about free consultation
  - CTA button: "Book a free consultation" → `/contact`
- **Design notes:** Blue gradient background, white text for contrast

---

## Page 2: About (`/about`)

**Purpose:** Build trust through personal story, credentials, and approach  
**File:** `src/pages/about.astro`

### Section Breakdown

#### 1. Hero Section

- **Goal:** Set welcoming, personal tone
- **Content:**
  - H1: "About Me"
  - Intro text: "Over a decade of experience providing compassionate, trauma-informed therapy..."
- **Design notes:** Gradient background (blue-50 to white)

#### 2. Bio Section

- **Goal:** Personal connection through professional story
- **Content:**
  - Photo placeholder (left side on desktop)
  - Full narrative bio covering:
    - Educational background (Wits University)
    - Early career (CSVR, Africa work)
    - International experience (The Gambia, UNDP)
    - Current practice (online-based)
  - Key themes: Trauma-informed, diverse contexts, accessibility
- **Design notes:** 2-column layout (image + text) on desktop, stacked on mobile

#### 3. "How I Work" / Approach Section

- **Goal:** Demystify therapy process, explain modalities
- **Content:**
  - Section heading: "How I work"
  - Primary modality: Psychodynamic therapy explanation
  - Additional modalities mentioned
  - Emphasis on safe, relationship-focused approach
  - Client-centered language ("We work together...")
- **Design notes:** Clean, readable typography

#### 4. Credentials Section

- **Goal:** Professional legitimacy
- **Content:**
  - HPCSA registration details
  - Professional affiliations
  - Years of experience
- **Design notes:** Badge-style presentation

#### 5. "What I Work With" Section

- **Goal:** Reiterate specializations for SEO and clarity
- **Content:** Same 8 focus areas as homepage (with expanded descriptions)
- **Design notes:** Consistent with homepage styling

#### 6. Trust Badges

- **Component:** `TrustBadges.astro` (reused)
- **Content:** HPCSA + Psychology Today badge

#### 7. CTA Section

- **Goal:** Encourage next step after reading about Jacqui
- **Content:**
  - Headline: "Ready to start?"
  - Dual CTAs: "Get in touch" + "View services"
- **Design notes:** Blue gradient, prominent button styling

---

## Page 3: Services (`/services`)

**Purpose:** Detailed service descriptions with pricing and logistics  
**File:** `src/pages/services.astro`

### Section Breakdown

#### 1. Hero Section

- **Content:**
  - H1: "Services"
  - Intro: "Flexible therapy and consultancy services to meet you where you are"

#### 2. Online Therapy Section

- **ID:** `#online`
- **Goal:** Explain online therapy offering in detail
- **Content:**
  - Section heading: "Online therapy & counselling"
  - Description: What it is, who it's for
  - **Getting Started** subsection:
    - Free consultation
    - Initial assessment
    - Ongoing sessions (50 minutes)
  - **What to Expect** subsection:
    - Secure video platform
    - Flexible scheduling
    - Time zone accommodation
  - **Payment & Fees** subsection:
    - Fee discussion in consultation
    - Payment methods (bank transfer)
    - Medical aid note (invoices for out-of-network reimbursement)
- **Design notes:** White background, border-left accent for subsections

#### 3. In-Person Therapy Section

- **ID:** `#in-person`
- **Goal:** Introduce NEW in-person option
- **Content:**
  - Section heading: "In-person therapy & counselling"
  - Description: Local clients, face-to-face option
  - **Location & Availability** subsection:
    - Practice location details (TBD - client to provide)
    - Session times available
  - **What to Expect** subsection:
    - Safe, comfortable space
    - Standard 50-minute sessions
  - **Fees** subsection:
    - Same fee structure as online
    - Payment methods
- **Design notes:** Blue-50 background for visual separation

#### 4. Consultancy Section

- **ID:** `#consultancy`
- **Goal:** Showcase professional services beyond individual therapy
- **Content:**
  - Section heading: "Training & Consultancy"
  - Intro text: "Supporting organizations and professionals..."
  - **6 service cards in grid:**
    1. **Training & Workshops** (🎓)
       - Mental health awareness, trauma-informed care, custom programs
    2. **Community Programs** (🤝)
       - Group interventions, psycho-education, community support
    3. **Workplace Wellness** (💼)
       - Stress management, burnout prevention, team resilience
    4. **Mentorship** (🌱)
       - Psychology professionals, career guidance, clinical supervision
    5. **Body Mapping** (🎨)
       - Therapeutic workshops, group facilitation, trauma processing
    6. **Content Development** (📝)
       - Mental health content, training materials, educational resources
- **Design notes:** 3-column grid (desktop), 1-column (mobile), card styling

#### 5. CTA Section

- **Goal:** Convert consultancy browsers
- **Content:**
  - Headline: "Let's work together"
  - CTA: "Get in touch" → `/contact`
- **Design notes:** Consistent with other CTA sections

---

## Page 4: Contact (`/contact`)

**Purpose:** Make it easy to reach out, lower barrier to first contact  
**File:** `src/pages/contact.astro`

### Section Breakdown

#### 1. Hero Section

- **Content:**
  - H1: "Get in Touch"
  - Intro: "Book a free consultation or reach out with any questions"

#### 2. Contact Methods Section

- **Goal:** Multiple contact options for different preferences
- **Content:**
  - **Primary:** Contact form (Netlify Forms)
    - Fields: Name, Email, Phone, Message, Service Interest (dropdown)
    - Validation: Required fields, email format
    - Submit: "Send message"
  - **Direct contact options:**
    - Email link (mailto:)
    - WhatsApp button (tel: link)
- **Design notes:** Form on left (desktop), contact options on right

#### 3. "What Happens Next?" Section

- **Goal:** Set expectations, reduce anxiety about reaching out
- **Content:**
  - 3-step process:
    1. "I'll respond within 24-48 hours"
    2. "Free consultation to discuss your needs"
    3. "Book your first session if we're a good fit"
- **Design notes:** Numbered list with circular badges

---

## Shared Components

### Header (`Header.astro`)

- **Content:** Logo, Navigation (Home, About, Services, Contact), Mobile hamburger menu
- **Design:** Sticky header, white background, shadow on scroll

### Footer (`Footer.astro`)

- **Content:** Contact info, quick links, credentials, copyright
- **Design:** Dark background, multi-column on desktop

### Base Layout (`BaseLayout.astro`)

- **Purpose:** Consistent HTML structure, SEO meta tags
- **Features:** Dynamic title/description, favicon, viewport, Open Graph, skip link

---

## Design System Summary

### Color Palette

- **Primary:** Blue (trust, calm) - `blue-600`, `blue-700`
- **Backgrounds:** White, `blue-50` (light accent)
- **Text:** `gray-900` (headings), `gray-700` (body), `gray-600` (secondary)

### Typography

- **Headings:** `font-heading` (defined in Tailwind config)
- **Body:** System font stack for performance
- **Scale:** Responsive (3xl/4xl → 4xl/5xl for H1s)

### Spacing

- **Section padding:** `py-16 md:py-20`
- **Container:** `max-w-6xl` or `max-w-4xl`
- **Grid gaps:** `gap-8`

### Responsive Breakpoints

- **sm:** 640px, **md:** 768px, **lg:** 1024px

### Interactive Elements

- **Buttons:** Primary (blue bg), Secondary (white bg on dark), Hover states
- **Links:** Underline on hover, blue color
- **Focus states:** Visible outline for keyboard navigation

---

## Content Principles

1. **Client-centered language:** "You" not "clients", "we work together" not "I treat"
2. **Reassuring tone:** Emphasize safety, confidentiality, free consultation
3. **Accessibility:** Complex topics explained simply, no jargon
4. **Action-oriented:** Clear CTAs on every page
5. **Trust-building:** Credentials visible but not boastful

---

## SEO Strategy

### Keywords (naturally integrated)

- Counselling psychologist, Online therapy South Africa, Trauma therapy
- PTSD treatment, Depression counselling, Anxiety support, Couples therapy

### On-page SEO

- H1 on every page (unique), Descriptive title tags, Meta descriptions
- Alt text on images, Semantic HTML structure

---

*This document serves as the source of truth for site structure. Update when pages are modified.*
