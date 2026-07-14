# Jacqui Chowles Website - Complete To-Do List

## 🔴 BLOCKED (Human Required)

### 1. Formspree Setup ⚠️
**Status:** BLOCKED - Need Jacqui's action  
**Action needed:**
1. Go to https://formspree.io
2. Create account using jacqui@jacquichowles.com (or preferred email)
3. Create new form and get form ID
4. Share form ID with me to update in code

**File to update:** `src/pages/contact.astro` (line 152)  
**Current:** `action="https://formspree.io/f/YOUR_FORM_ID"`

**Alternative:** Let me know if you prefer Netlify Forms - I can convert it!

---

### 2. Rate Information ⚠️
**Status:** BLOCKED - Need pricing from Jacqui  
**Action needed:** Provide actual session rates

**Required:**
- Individual therapy (50 minutes): **R XXX** ← Need real price
- Couples therapy (60 minutes): **R XXX** ← Need real price
- Consultancy: "Contact for quote" (already correct)

**File to update:** `src/pages/contact.astro` (lines 317-318)

---

### 3. Content Review ⚠️
**Status:** BLOCKED - Need Jacqui's approval  
**Action needed:**
- Review all pages (Home, About, Services, Contact)
- Approve all copy changes
- Confirm layout/design is acceptable
- Check all images are appropriate

**How to review:** Visit the live GitHub Pages site and review each page

---

### 4. Domain/DNS Setup ⚠️
**Status:** BLOCKED - Need DNS configuration  
**Action needed:**
1. Decide: Keep GitHub Pages or move to custom hosting?
2. If custom domain (jacquichowles.com):
   - Configure DNS A records or CNAME
   - Point to GitHub Pages
   - Add custom domain in GitHub repo settings
3. If staying on GitHub Pages: Share the final URL

---

### 5. Go Live ✈️
**Status:** BLOCKED - Waiting on items 1-4  
**Action needed:**
- Final deployment check
- Test contact form (after Formspree setup)
- Verify all pages load correctly
- Test on mobile devices
- Check all links work

---

### 6. Post-Launch Monitoring 👀
**Status:** BLOCKED - After go-live  
**Action needed:**
- Monitor for any broken links
- Check contact form submissions are arriving
- Test Psychology Today badge loads
- Review Google Search Console (if set up)
- Monitor page load speeds

---

## ℹ️ Optional / Future

### 7. Practice Number (TBC)
**Status:** Optional - marked as "TBC" in notes  
**Current state:** Not displayed on site (only HPCSA registration number shows)  
**Action:** Provide practice number if you want it added anywhere

---

### 8. Google Reviews Badge + Curated Reviews 💡
**Status:** Idea only - not started, needs Jacqui's go-ahead

**Google Business Profile link (the one to use):**
<https://maps.app.goo.gl/9FvDosAYSHw4vZwN8>

Resolves to **"Jacqui Chowles: Psychologist"** (Weltevreden Park / Roodepoort). Identifiers pulled from the resolved URL, for whichever API we end up using:

- CID (hex): `0x1e9575bd6fa287c7:0x2b047f4b729e8f5`
- CID (decimal): `193733900347500789`
- Google entity ID: `/g/11myv2j6jp`

**What it's for - two related pieces:**

1. **Live reviews badge/pill** - a small pill showing the star rating and the current review count, pulling live so it stays accurate on its own. Clicking it opens the Google Maps link above (her reviews page).
2. **Three handpicked reviews** - a curated set of three testimonials displayed on the site, chosen by Jacqui rather than auto-pulled. Only if she wants it.

**Open questions before building:**

- Does Jacqui actually want this? Both pieces, or just the badge?
- How to fetch live rating/count. Google Places API needs a billing-enabled API key and a Place ID (`ChIJ...`), which we'd resolve from the CID above. Places API caching rules restrict how long ratings may be stored - worth checking current terms. Alternative: build the badge at build time so there's no client-side key exposure, at the cost of the count only refreshing on rebuild.
- Curated reviews are a manual/content job - needs the actual review text and consent to reuse it.
- Placement: near the existing Psychology Today badge is the obvious home (trust badges are already aligned there).

---

## ✅ Completed

- ✅ Homepage layout fixes (tiles even and consistent)
- ✅ Services page improvements (removed gallery, resized images)
- ✅ About page layout simplified (clean 2-column grid)
- ✅ Trust badges aligned properly
- ✅ All images converted to WebP (97% size reduction!)
- ✅ UK English spelling throughout
- ✅ "Initial consultation" (not "free consultation") everywhere
- ✅ Contact details verified (phone: 076 605 4736, address correct)
- ✅ All content matches webste_notes_from_jacqui.md
- ✅ Psychology Today badge implemented and aligned
- ✅ Site code pushed to main branch on GitHub
- ✅ Site currently live on GitHub Pages (staging)

---

## 📋 Summary

**Total Outstanding:** 6 tasks  
**Blocked on Jacqui:** 6 tasks  
**Optional:** 2 tasks  
**Completed:** 12+ tasks ✅

**Next Action:** Jacqui needs to provide:
1. Formspree form ID (or confirm Netlify Forms preference)
2. Therapy session rates (2 prices)
3. Content approval
4. Domain/hosting decision

Once those are provided, the site can go fully live! 🚀

