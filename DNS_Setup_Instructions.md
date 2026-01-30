# DNS Setup Instructions for jacquichowles.com

## Overview

Your current website is hosted on Squarespace. Your new website is ready to go live. To make this happen, you need to update your DNS settings to point your domain to the new hosting location.

This guide will walk you through the process step-by-step.

---

## Before You Start

**What you'll need:**
- Access to your Squarespace account (the one that manages jacquichowles.com)
- About 10-15 minutes to complete the changes

**What will happen:**
- Your domain will start showing the new website instead of the Squarespace site
- Email will continue working normally (if you follow the instructions carefully)
- The change typically takes 4-48 hours to fully propagate worldwide

---

## Step-by-Step Instructions

### Step 1: Log into Squarespace

1. Go to [squarespace.com](https://www.squarespace.com)
2. Log in with your account credentials
3. Access the account that manages jacquichowles.com

### Step 2: Open Domain Settings

1. Click **Settings** in the left sidebar
2. Click **Domains**
3. Find and click on **jacquichowles.com**
4. Click **DNS Settings** (or **Advanced Settings** → **DNS**)

### Step 3: Add New DNS Records

You'll need to add 5 new DNS records total.

#### Part A: Add 4 A Records (for the main domain)

Click **Add Record** or **Custom Records** → **Add**.

**Record 1:**
- Type: `A`
- Host: `@`
- Value: `185.199.108.153`
- Click **Save** or **Add**

**Record 2:**
- Type: `A`
- Host: `@`
- Value: `185.199.109.153`
- Click **Save** or **Add**

**Record 3:**
- Type: `A`
- Host: `@`
- Value: `185.199.110.153`
- Click **Save** or **Add**

**Record 4:**
- Type: `A`
- Host: `@`
- Value: `185.199.111.153`
- Click **Save** or **Add**

#### Part B: Add 1 CNAME Record (for the www version)

Click **Add Record** again.

**Record 5:**
- Type: `CNAME`
- Host: `www`
- Value: `jacquichowles.com`
- Click **Save** or **Add**

### Step 4: Remove Old DNS Records

**Important:** You need to remove any conflicting old records.

Look for existing records with:
- Type: `A` and Host: `@` (pointing to different IP addresses)
- Type: `CNAME` and Host: `www` (pointing to anything else)

**Delete these old records** by clicking the trash/delete icon next to them.

### Step 5: Protect Your Email (Critical)

**⚠️ DO NOT DELETE THESE RECORDS:**

- Any record with Type: `MX` (Mail Exchange)
- Any record with Type: `TXT` containing "SPF" or "DKIM"
- Any record related to email services

If you accidentally delete these, your email will stop working. If you're unsure, take a screenshot before making changes.

### Step 6: Save and Confirm

1. Make sure all changes are saved
2. Review that you have:
   - ✅ 4 A records (all with Host: `@`)
   - ✅ 1 CNAME record (Host: `www`)
   - ✅ All email records still intact
3. Click **Save** or **Apply Changes** (if required)
4. Message your web developer: **"DNS updated - Done"**

---

## What Happens Next

### Propagation Timeline

| Time | What to Expect |
|------|----------------|
| **0-2 hours** | Changes begin propagating. Some visitors may see the new site. |
| **2-24 hours** | Most visitors see the new site. SSL certificate begins provisioning. |
| **24-48 hours** | All visitors see the new site with secure HTTPS. |

### During Propagation

- Some people may see the old site, others may see the new site
- This is normal and temporary
- Don't panic if you still see the old site after saving - it can take time

### SSL Certificate (HTTPS/Padlock)

- The secure padlock icon may not appear immediately
- This is automatically provisioned within 24 hours of DNS propagation
- Your site will work fine during this time, just without the padlock initially

---

## Troubleshooting

### "I still see the old Squarespace site"

Try these steps:
1. Clear your browser cache (Ctrl+Shift+Delete / Cmd+Shift+Delete)
2. Try in an incognito/private window
3. Wait another few hours for DNS to propagate
4. Check on your phone using mobile data (not wifi)

### "My email stopped working"

You likely deleted an MX or TXT record by accident.
1. Contact your web developer immediately
2. Do not try to fix it yourself
3. They can restore the correct email records

### "I see a 'Page Not Found' error"

This is temporary during propagation. Wait 1-2 hours and check again.

---

## Quick Reference: DNS Records Summary

Copy this table for your records:

| Type | Host | Value |
|------|------|-------|
| A | @ | 185.199.108.153 |
| A | @ | 185.199.109.153 |
| A | @ | 185.199.110.153 |
| A | @ | 185.199.111.153 |
| CNAME | www | jacquichowles.com |

---

## Need Help?

If you run into any issues during this process, contact your web developer before making further changes.

**Do not:**
- Delete records you're unsure about
- Make additional changes beyond what's listed here
- Panic if changes take time to appear

**Do:**
- Take screenshots before making changes
- Follow the instructions exactly as written
- Message your developer when complete

---

**Document created:** January 30, 2026  
**Domain:** jacquichowles.com  
**Purpose:** Transfer from Squarespace to new hosting
