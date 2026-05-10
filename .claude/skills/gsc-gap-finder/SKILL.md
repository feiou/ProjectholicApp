---
name: gsc-gap-finder
description: Analyze Google Search Console CSV exports to find keyword gaps, cannibalization, CTR opportunities, and propose specific articles or rewrites. Use when the user provides GSC CSVs (queries, pages, performance) or says "find content gaps", "GSC analysis", "what should I write next", or "weekly SEO review".
---

# GSC Gap Finder

The weekly growth loop. Input: GSC exports. Output: a punch list of 3–5 specific actions with exact numbers attached.

## Input the user provides

Ask for these CSV exports from Google Search Console (Performance → Search results → Export):

1. **Queries** — query, clicks, impressions, CTR, position
2. **Pages** — page, clicks, impressions, CTR, position
3. **(Optional) Queries × Pages** — combined dimension, downloaded as filtered export

Date range: last 28 days for current state; last 3 months for trend analysis.

## Analyses to run (in order)

### 1. High-impression, zero-click queries
Filter Queries CSV: `impressions ≥ 50` AND `clicks = 0`.

These are queries where Google shows our page but nobody clicks — usually because AI Overviews answered for them. Action: write/update an article with a Quick Answer block + FAQ schema for that query so we become the Overview source.

### 2. Position 4–10 with high impressions (CTR opportunities)
Filter Queries CSV: `position 4–10` AND `impressions ≥ 100`.

These pages are one push away from page 1. Action: rewrite the title tag to match query intent, add internal links from high-authority pages, refresh content, update `dateModified`.

### 3. Cannibalization
Group Queries × Pages CSV by query. Flag any query where ≥2 of our pages compete (both have impressions for the same query).

Action: pick the canonical page for that query, redirect or de-emphasize the other (remove keyword from title, weaken H1, reduce internal links to it). Never let two pages fight over the same query.

### 4. Page-level decline
Compare Pages CSV last 28d vs prior 28d. Flag any page with `clicks` down ≥30% AND `impressions` down ≥20%.

Action: investigate. Usually a content freshness signal. Refresh the article, update `dateModified`, and ping IndexNow.

### 5. Keyword gaps
Look at Queries CSV for terms with high impressions but no obvious dedicated page on the site. Action: propose a new article targeting that exact query as the article H1.

## Output format

Return a single markdown report:

```
# GSC Weekly Review — <date range>

## Snapshot
- Total clicks: X (▲/▼ Y% vs prior period)
- Total impressions: X (▲/▼ Y%)
- Avg position: X
- Page-1 rankings: X queries

## Top opportunities (ranked by impact)

### 1. <opportunity title>
- **Type:** zero-click query / CTR push / cannibalization / decline / gap
- **Query / page:** ...
- **Numbers:** impressions=X, clicks=Y, position=Z
- **Action:** specific edit or new article
- **Effort:** S/M/L
- **Estimated lift:** rough click delta if action works

### 2. ...

## Articles to write (this week)
- [ ] Title — target query — primary intent — outline
- [ ] ...

## Articles to refresh
- [ ] file:line — what to change

## Internal-link plays
- From <high-authority page> → to <weak page> with anchor "<text>"

## Skipped
- <opportunities considered but rejected, with reason>
```

## Constraints

- Always quote actual numbers from the CSVs. No invented stats.
- Recommend at most 5 actions per week — more is shelfware.
- Prefer refreshing/internal-linking existing articles over writing new ones (faster ROI).
- New articles should target a single specific query as the H1, not a broad topic.

## Companion skills

- After this analysis, hand off to `aeo-article-audit` (for refresh actions) or kick off new article drafting (with `aeo-quick-answer` and `faq-schema-add` afterward).
- After publishing/updating, run `indexnow-publish` to ping crawlers.
