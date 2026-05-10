---
name: weekly-seo-loop
description: Run the full weekly SEO/AEO growth loop end-to-end on Projectholic — GSC analysis, identify 3–5 opportunities, refresh/write articles, internal-link, ping IndexNow. Use when the user says "weekly SEO", "Monday SEO", "run the growth loop", or "weekly content review".
---

# Weekly Growth Loop (Projectholic)

The single highest-ROI recurring task for the site. Inspired by the agensi.io playbook (0 → 15K MAU in 8 weeks). Time budget: 2–3 hours.

## Phases

This skill orchestrates the other AEO skills. Don't reinvent — call them in order.

### Phase 1: Analyze (≈30 min)
Use the `gsc-gap-finder` skill on the user's latest GSC exports. Output: ranked opportunities + article punch list.

If the user hasn't provided GSC exports, ask for them before continuing. Do not guess.

### Phase 2: Decide (≈15 min)
With the user, pick exactly:
- 1–2 articles to refresh (from the punch list)
- 1–2 articles to write (from the punch list)
- 1–2 internal-link plays

More than this and nothing ships. Fewer than this and the loop doesn't compound.

### Phase 3: Execute (≈90–120 min)

For each refresh:
1. Run `aeo-article-audit` — get the fixlist.
2. Apply P0 + P1 fixes only. Defer P2 polish.
3. Bump `dateModified` in Article JSON-LD.

For each new article:
1. Draft H1 = exact target query (or close to it).
2. Outline H2s as questions.
3. Write the body.
4. Apply `aeo-quick-answer` to insert the 40–60 word answer block.
5. Apply `faq-schema-add` with 3–8 Q&As pulled from real search queries.
6. If procedural, apply `howto-schema-add`.
7. Add to `blog/index.html` (the listing) and `sitemap.xml`.
8. Update `llms.txt` with the new entry (call `llms-txt-build`).

For each internal-link play:
1. Open the source page.
2. Find a natural place to link, with descriptive anchor text.
3. Edit and bump `dateModified` if the change is more than cosmetic.

### Phase 4: Ship (≈10 min)
1. Stage and commit all changes with a meaningful message ("Weekly SEO loop — week of YYYY-MM-DD: refreshed X, added Y").
2. Push to main. Wait for GitHub Pages deploy (~1–2 min).
3. Run `indexnow-publish` for every changed/new URL.
4. Manually request indexing in GSC for new URLs.

### Phase 5: Record (≈5 min)
Append a one-line summary to a running log (ask the user where they want to keep this — could be a memory entry, a `seo-log.md` file, or a Notion page).

Format:
```
YYYY-MM-DD — wrote: [titles]; refreshed: [titles]; links: [count]; key opportunity addressed: [one line]
```

## Constraints

- Never auto-commit without confirming the diff with the user first.
- Cap the loop at 5 actions per week. If GSC surfaces more, queue them — do not expand the loop.
- If the user has no GSC data yet (new site), skip Phase 1 and instead pick from a manual topic backlog. Note this and recommend revisiting once GSC has 2–3 weeks of data.

## Anti-patterns

- ❌ Writing "ultimate guides" or "complete guides" — too broad, never rank.
- ❌ Refreshing pages just to bump `dateModified` without real content changes — Google detects and ignores.
- ❌ Building 10 thin articles instead of 2 strong ones.
- ❌ Skipping IndexNow + GSC indexing requests — your work won't show for weeks otherwise.
