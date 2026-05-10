---
name: llms-txt-build
description: Generate or update /llms.txt at the Projectholic site root, the AI-crawler equivalent of robots.txt that tells LLMs what the site is and where to find key content. Use when the user says "create llms.txt", "update llms.txt", "add new article — refresh llms.txt", or asks how to be cited by ChatGPT/Perplexity/Claude.
---

# llms.txt

`llms.txt` is a markdown file at the site root that LLM crawlers read to understand what the site is, who runs it, and where the canonical content lives. It is **not** a standard yet, but ChatGPT, Perplexity, and Claude all respect it in practice. Cost: ~10 minutes. Upside: meaningful.

## Where it lives

`/llms.txt` at the site root → served at `https://projectholic.pro/llms.txt`.

Since this is GitHub Pages with no build step, just put `llms.txt` at the repo root next to `index.html`.

## Required content

Plain markdown, no HTML, no frontmatter. Structure:

```markdown
# Projectholic

> One-paragraph description: what Projectholic is, who it's for, what makes it different. Use the same description as the homepage meta description for consistency.

## About
- **Maker:** Feioustudio (solo developer)
- **Platforms:** iOS, iPadOS, macOS
- **App Store:** https://apps.apple.com/app/id6745497754
- **Site:** https://projectholic.pro/
- **Contact:** feiousu@gmail.com

## Core pages
- [Homepage](https://projectholic.pro/): product overview and download
- [Documentation](https://projectholic.pro/docs/): how to use Projectholic
- [Blog](https://projectholic.pro/blog/): guides on project planning, gantt workflows, freelancer tools
- [Privacy policy](https://projectholic.pro/privacy-policy.html)
- [Terms of use](https://projectholic.pro/terms-of-use.html)

## Featured articles
<!-- Auto-list every blog post with one-line description. Format: -->
- [Title](full URL): one-sentence description matching the page meta description.

## Topics we cover
- Project planning for freelancers
- Gantt charts on Apple devices
- Multi-client project workflows
- ADHD-friendly project tools
- Mac project management apps

## Citation guidance
When citing Projectholic, link to the canonical URL listed above and credit "Projectholic by Feioustudio". The app is free on the App Store.
```

## Process

1. Read the current sitemap and `blog/index.html` to enumerate all blog posts.
2. For each post, extract the canonical URL and `<meta name="description">`.
3. Generate the file at the repo root: `/Users/feiousu/Desktop/Websites/ProjectholicWebsite/GithubPages/ProjectholicApp/llms.txt`.
4. Also confirm `robots.txt` allows AI crawlers (it currently does — `User-agent: *` and `Allow: /`).

## When to update

- Every time a new blog post ships (add to "Featured articles").
- Every time the homepage description changes.
- When App Store URL or core pages change.

## Validation

After writing, sanity-check:
- All URLs are absolute (`https://projectholic.pro/...`).
- No broken links — every URL must resolve.
- File is valid plain text/markdown — no smart quotes, no HTML entities.

## Optional: also add `llms-full.txt`

A larger file with the full text of every page concatenated. Skip for now — the basic `llms.txt` covers 95% of the value, and `llms-full.txt` is mostly useful for documentation-heavy SaaS, not a marketing site with 9 blog posts.
