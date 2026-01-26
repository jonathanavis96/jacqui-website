# Architectural Decisions - Jacqui Howles Website

Log of significant architectural and design decisions.

---

## Decision Log

### DEC-2026-01-22-001: Tech Stack Selection

**Status:** Proposed (pending confirmation)

**Context:**
Need to choose a tech stack for a professional services website with:
- 4 pages (Home, About, Services, Contact)
- Static content (no user accounts, no database)
- Contact form integration
- Psychology Today embed/badge
- Fast load times important for mobile users

**Decision:** Astro with Tailwind CSS

**Rationale:**
1. **Astro** - Perfect for content-focused sites, ships zero JS by default
2. **Tailwind CSS** - Rapid styling, consistent design system
3. **Deployment** - Netlify (free tier, automatic deploys from git)
4. **Forms** - Netlify Forms or Formspree for contact form

**Alternatives Considered:**
- Next.js: Overkill for static site, unnecessary complexity
- Plain HTML/CSS: Harder to maintain, no component reuse
- WordPress: Hosting costs, security maintenance, overkill

**Impact:**
- Fast page loads (good for mobile, SEO)
- Easy for future maintenance
- No server costs (static hosting)

---

### DEC-2026-01-22-002: Page Structure

**Status:** Proposed

**Context:**
Current site has: Home, About, Services, Contact
Need to decide if we keep this structure or modify.

**Decision:** Keep 4-page structure

**Pages:**
| Page | Purpose |
|------|---------|
| **Home** | Overview, value prop, trust markers, CTA |
| **About** | Full bio, approach, credentials |
| **Services** | Online + In-person therapy, consultancy |
| **Contact** | Email, WhatsApp, booking CTA |

**Rationale:**
- Matches user mental model from existing site
- 4 pages is manageable scope for deadline
- Each page has clear purpose

---

### DEC-2026-01-22-003: Content Strategy

**Status:** Confirmed (from PROJECT_BRIEF)

**Decision:** Preserve 100% of existing content, restructure for clarity

**Rules:**
1. No content deletion - only reorganization
2. Landing page = overview (link to details on inner pages)
3. Use visual breaks (headings, quotes, images) to avoid text walls
4. Modular copy (easy for client to edit later)

---

## Pending Decisions

- [ ] Color palette (awaiting client input)
- [ ] Typography selection (awaiting design direction)
- [ ] Contact form provider (Netlify Forms vs Formspree)
- [ ] Psychology Today badge implementation method

---

*Format: DEC-YYYY-MM-DD-NNN: Title*
