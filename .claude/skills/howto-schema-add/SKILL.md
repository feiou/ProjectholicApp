---
name: howto-schema-add
description: Add HowTo JSON-LD structured data to a Projectholic article that is genuinely step-by-step (tutorials, setup guides, "how to build X"). Use when the user says "add HowTo schema" or asks to make a tutorial citable by AI engines as procedural steps.
---

# HowTo Schema

Use only on articles that are genuinely procedural. Misuse (applying HowTo to listicles or comparisons) gets pages demoted, not boosted.

## When to use

- ✅ "How to build a practical project Gantt"
- ✅ "How to set up Projectholic for client work"
- ❌ "Best apps for X" (this is a list — use FAQ schema instead)
- ❌ "Why X matters" (this is opinion — no HowTo)

## Rules

- Each step must correspond to a visible H2 or H3 on the page.
- Step text must match visible content.
- Minimum 3 steps. Each step has a `name` and a `text` (1–2 sentences describing the action).
- Add `totalTime` in ISO 8601 duration (e.g. `PT15M`) when reasonable.
- Add `tool` and `supply` arrays only if they're real (Projectholic, a Mac, etc.).

## HTML pattern

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "HowTo",
  "name": "<the procedure name, e.g. 'Build a practical project Gantt'>",
  "description": "<one-sentence summary>",
  "totalTime": "PT15M",
  "tool": [
    { "@type": "HowToTool", "name": "Projectholic" }
  ],
  "step": [
    {
      "@type": "HowToStep",
      "position": 1,
      "name": "<step heading, matches H2/H3 on page>",
      "text": "<1–2 sentences describing the action>",
      "url": "https://projectholic.pro/blog/<slug>.html#<anchor>"
    }
  ]
}
</script>
```

Add `id` attributes to the matching H2/H3s so the `url` anchors resolve:

```html
<h2 id="step-1-list-deliverables">Step 1 — list deliverables</h2>
```

## Process

1. Confirm the article is genuinely step-by-step. If not, reject — suggest FAQ schema instead.
2. Extract steps from the article's existing H2/H3 structure. Do not invent.
3. Add `id="step-N-..."` anchors to step headings.
4. Insert HowTo JSON-LD in `<head>`.
5. Update `dateModified` in the Article JSON-LD.

## Coexistence with other schemas

HowTo + Article + FAQPage + BreadcrumbList can all coexist on one page. Keep them in separate `<script type="application/ld+json">` blocks for clarity.
