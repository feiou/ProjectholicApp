---
name: indexnow-publish
description: After publishing or substantially updating a Projectholic page, ping IndexNow + request Google indexing so the change is crawled within ~24 hours instead of weeks. Use when the user says "I shipped a new article", "ping IndexNow", "submit for indexing", or after any content commit on main.
---

# IndexNow + Indexing Submission

When a static-site change ships, default crawl latency is days-to-weeks. IndexNow (used by Bing, Yandex, Naver, Seznam, and increasingly respected by Google) cuts that to hours.

## One-time setup (do once, then skip)

1. **Generate an IndexNow API key** — any 8–128 char alphanumeric string. Use a UUID:
   ```bash
   uuidgen | tr -d '-' | tr 'A-Z' 'a-z'
   ```
2. **Host the key** at `/<key>.txt` at the site root, where the file's contents are the key itself.
   - File path: `/Users/feiousu/Desktop/Websites/ProjectholicWebsite/GithubPages/ProjectholicApp/<key>.txt`
   - Will serve at `https://projectholic.pro/<key>.txt`
3. **Save the key** somewhere persistent (this skill's notes, a memory entry, or a `.indexnow-key` file in repo — gitignore'd if you don't want it public, but it's not actually a secret since the verification file is public anyway).
4. Commit and push the key file before first ping.

## Per-publish workflow

After the user merges a content change to main and GitHub Pages has redeployed (~1–2 min):

### 1. Ping IndexNow

For up to 10 URLs at once, POST to `https://api.indexnow.org/indexnow`:

```bash
curl -X POST https://api.indexnow.org/indexnow \
  -H "Content-Type: application/json" \
  -d '{
    "host": "projectholic.pro",
    "key": "<your-indexnow-key>",
    "keyLocation": "https://projectholic.pro/<your-indexnow-key>.txt",
    "urlList": [
      "https://projectholic.pro/blog/<new-or-updated-article>.html",
      "https://projectholic.pro/blog/",
      "https://projectholic.pro/sitemap.xml"
    ]
  }'
```

Expected: HTTP 200 (accepted) or 202 (queued). 4xx means key/host mismatch — verify the key file is reachable.

### 2. Request Google indexing

Google does not consume IndexNow directly. Open Google Search Console → URL Inspection → paste the URL → "Request indexing". Do this for each new/changed URL.

This skill cannot click GSC for the user — output the URLs and the steps and ask the user to do it. (Or use the GSC Indexing API if the user sets up a service account, but that's overkill for <20 pages/month.)

### 3. Update the sitemap timestamp

Open `sitemap.xml` and update `<lastmod>` for the changed URL(s) to today's date in `YYYY-MM-DD` format. Also bump `<lastmod>` for the parent index URLs (e.g. `/blog/`).

## What counts as a "substantial update" worth pinging

- ✅ New article published.
- ✅ Article rewrite (Quick Answer added, sections rewritten, FAQ schema added).
- ✅ Title tag or H1 changed.
- ✅ Schema added/changed.
- ❌ Typo fix or one-sentence edit — skip, don't burn the IndexNow quota.

## Constraints

- IndexNow has rate limits — don't ping the same URL more than once per 24h.
- Always ping the canonical URL (the one in `<link rel="canonical">`), not a redirect.
- Bundle related URLs into one POST (max 10).

## Output

After running, report to the user:
- HTTP status from IndexNow.
- List of URLs submitted.
- Reminder to manually request indexing in GSC for new URLs.
- Confirmation that `sitemap.xml` `lastmod` was updated.
