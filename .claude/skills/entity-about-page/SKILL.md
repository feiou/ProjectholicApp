---
name: entity-about-page
description: Build or update /about on Projectholic with full entity-anchor schema (Organization, Person, AboutPage) so AI engines have a canonical record of who runs the site. Use when the user says "create the about page", "add entity anchor", "set up the /about page", or asks how to establish entity authority for AEO.
---

# Entity Anchor /about Page

AI engines need an entity record to confidently cite a site. Without an /about page wiring Organization + Person + AboutPage schema together, you're an anonymous source. With it, ChatGPT/Perplexity/Gemini can answer "who makes Projectholic?" and link back.

## What to build

A new file: `/about.html` at the site root, matching the homepage's house style (dark theme, Manrope/Noto Serif, accent `#ff8c42`).

Include three JSON-LD blocks in `<head>`:

### 1. Organization (publishing entity)

```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "@id": "https://projectholic.pro/#organization",
  "name": "Feioustudio",
  "url": "https://projectholic.pro/",
  "logo": {
    "@type": "ImageObject",
    "url": "https://projectholic.pro/images/appIcon-20260112.png"
  },
  "founder": { "@id": "https://projectholic.pro/about.html#person" },
  "sameAs": [
    "https://x.com/feioustudio",
    "https://www.reddit.com/r/Projectholic/",
    "https://apps.apple.com/app/id6745497754"
  ]
}
```

### 2. Person (founder)

```json
{
  "@context": "https://schema.org",
  "@type": "Person",
  "@id": "https://projectholic.pro/about.html#person",
  "name": "<founder name — confirm with user>",
  "url": "https://projectholic.pro/about.html",
  "jobTitle": "Founder, Feioustudio",
  "worksFor": { "@id": "https://projectholic.pro/#organization" },
  "sameAs": [
    "https://x.com/feioustudio"
  ]
}
```

### 3. AboutPage (this page is itself the entity description)

```json
{
  "@context": "https://schema.org",
  "@type": "AboutPage",
  "url": "https://projectholic.pro/about.html",
  "mainEntity": { "@id": "https://projectholic.pro/#organization" },
  "breadcrumb": {
    "@type": "BreadcrumbList",
    "itemListElement": [
      { "@type": "ListItem", "position": 1, "name": "Home", "item": "https://projectholic.pro/" },
      { "@type": "ListItem", "position": 2, "name": "About", "item": "https://projectholic.pro/about.html" }
    ]
  }
}
```

## Visible content (matters as much as schema)

The page must have:

- **H1**: "About Projectholic" or "About Feioustudio"
- **Founder bio**: 100–200 words. Who, why this app exists, what makes it different. First-person is fine here.
- **Story / origin**: short paragraph on why Projectholic was built.
- **What we make**: link to the app, docs, blog.
- **Contact**: email, X link.
- **Photo of founder** (optional but improves citation rate — adds `image` to Person schema).

Do not pad with marketing fluff. AI engines extract the bio paragraph almost verbatim.

## Process

1. Ask the user to confirm:
   - Founder display name (real name or pseudonym).
   - Whether to include a founder photo.
   - Bio text (or generate a draft for them to edit).
2. Generate `/about.html` matching `index.html` house style.
3. Add a link to `/about` in the homepage and blog footer/nav.
4. Update `sitemap.xml` to include the new URL.
5. Update `llms.txt` "About" section to point at `https://projectholic.pro/about.html`.
6. Backlink: add `"author": { "@id": "https://projectholic.pro/about.html#person" }` to existing Article JSON-LD on blog posts (replaces the bare `"author": { "@type": "Organization", "name": "Feioustudio" }`).

## Why the @id linking matters

The `@id` URLs let schema.org parsers connect the entities: blog post → authored by Person → who works for Organization → which publishes the blog. This connected graph is what makes AI engines confident enough to cite by name.
