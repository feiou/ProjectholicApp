---
name: aeo-article-audit
description: Audit a single blog article (HTML) on projectholic.pro against the AEO/SEO checklist and produce a prioritized fix list. Use when the user says "audit this article", "AEO check", or names a specific blog HTML file and asks how to improve it. Read-only — propose changes, do not edit until asked.
---

# AEO/SEO Article Audit (Projectholic)

Audit a target HTML article in `blog/*.html` against the AEO playbook used to grow agensi.io to 15K MAU. Output a prioritized fix list with exact line numbers and the snippet to insert. Do **not** edit files — the user reviews the fixlist first.

## What to check (in this order)

1. **Quick Answer block** (top of article, after H1)
   - 40–60 words, plain prose, directly answers the article's main question.
   - Wrapped in a visually distinct container (e.g. `<div class="quick-answer">` with role/aria for accessibility).
   - Contains the primary entity (Projectholic) only if natural — do not stuff.

2. **H2s as questions**
   - Every H2 should read as a question (`Where…`, `How…`, `Why…`, `What…`, `When…`, `Which…`, `Should…`, `Is/Are…`).
   - Statement-style H2s like "Why this matters more for freelancers" → "Why does this matter more for freelancers?"
   - Flag every non-question H2 with file:line and propose a question rewrite.

3. **FAQPage schema**
   - Must have a `<script type="application/ld+json">` with `"@type": "FAQPage"` containing at least 3 Q&As that mirror real user search queries.
   - Q&A text must match what's visible on the page (Google penalizes hidden FAQ content).

4. **HowTo schema** — only if the article is genuinely step-by-step (e.g. project-gantt-guide.html). Do not force.

5. **Article schema completeness**
   - Has `headline`, `datePublished`, `dateModified`, `author`, `publisher`, `mainEntityOfPage`, `description`, `image`.
   - `dateModified` should be updated whenever the article is meaningfully edited.

6. **Canonical, robots, Open Graph, Twitter card** — all present and consistent.

7. **Internal links**
   - At least 2 outbound internal links to related blog posts.
   - At least 1 link to a high-authority page (homepage or pillar article).
   - Anchor text should be descriptive (not "click here").

8. **Comparison table** — if the article compares apps/tools, must include a `<table>` with clear columns. AI engines extract these directly.

9. **Image hygiene**
   - All `<img>` have descriptive `alt` text.
   - No oversized PNGs (>50KB unless hero).
   - `loading="lazy"` on below-fold images.

10. **Readability signals**
    - First sentence states the topic clearly.
    - Short paragraphs (≤4 lines).
    - Bullet lists or tables for comparable items.

## Output format

Return a single markdown report:

```
# AEO Audit — <filename>

## Summary
<1–2 sentence verdict + AEO score X/10>

## P0 (must fix — blocking AI citation)
- [ ] <issue> — file:line — proposed fix snippet

## P1 (high impact)
- [ ] ...

## P2 (polish)
- [ ] ...

## Skip / N/A
- <items considered and intentionally skipped, with reason>
```

Each fix item must include the **exact HTML snippet to insert** so the user can apply it without thinking. Use ```html fenced blocks.

## Constraints

- Never edit the article during an audit. Audit = read-only.
- If asked to "audit and fix", run the audit, show the fixlist, and **wait for explicit go-ahead** before editing.
- Use the patterns already established in `blog/best-apps-for-adhd-freelancers.html` (Article + BreadcrumbList JSON-LD, dark theme, Manrope/Noto Serif fonts) — match house style, do not invent new conventions.
