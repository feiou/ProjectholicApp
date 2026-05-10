---
name: faq-schema-add
description: Add or update FAQPage JSON-LD structured data on a Projectholic page. Use when the user says "add FAQ schema", "add FAQ section", "make this page eligible for FAQ rich results", or wants AI engines to pull Q&As from a page.
---

# FAQPage Schema

FAQ schema is one of the highest-ROI structured-data additions. Google's AI Overviews and LLM crawlers pull Q&As directly into answers, and the rendered FAQ also helps human readers.

## Rules — non-negotiable

1. **Visible content must match schema content.** Google penalizes FAQ schema that references hidden or non-existent text. Render the same Q&As on the page in HTML.
2. **Real questions only.** Use queries people actually search — pull from Google Search Console (see `gsc-gap-finder` skill) or the article's natural objections. No invented marketing Qs.
3. **Answer length: 40–80 words per answer.** Short enough to be cited verbatim, long enough to be a complete answer.
4. **3–8 Q&As per page.** More than 8 dilutes; fewer than 3 isn't worth schema.
5. **One FAQPage per page.** Do not duplicate.
6. **Every answer earns its place.** Each answer must do all of: (a) directly answer the question, (b) include one concrete detail or specific (a number, a feature name, a duration, a real situation), and (c) end with a soft pull toward the product or the next read — without sounding like marketing copy. Dry recital ("Projectholic is a project planning app for freelancers…") is the failure mode. Confident specifics that make the reader want to try the app are the bar.

## HTML pattern

Add the schema in `<head>` next to the existing JSON-LD blocks:

```html
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "<exact question text as it appears on page>",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "<answer text, 40–80 words, matches what's visible on page>"
      }
    }
  ]
}
</script>
```

Render the corresponding visible section before `</article>`:

```html
<section class="faq" aria-label="Frequently asked questions">
  <h2>Frequently asked questions</h2>
  <details>
    <summary>Question text</summary>
    <p>Answer text — same as in JSON-LD.</p>
  </details>
</section>
```

Style hints (match Projectholic dark theme):

```css
.faq { margin-top: 48px; padding-top: 28px; border-top: 1px solid var(--stroke); }
.faq details { padding: 14px 18px; border: 1px solid var(--stroke); border-radius: 12px; margin-bottom: 10px; }
.faq summary { cursor: pointer; font-weight: 600; }
.faq details[open] summary { margin-bottom: 8px; }
.faq p { margin: 0; color: var(--muted); line-height: 1.6; }
```

## Process

1. Ask the user (or infer from article topic) what 3–8 questions to cover.
2. Draft Q&As. Show the user the list before generating schema/HTML.
3. On approval:
   - Insert visible `<section class="faq">` before the closing `</article>` or content block.
   - Insert FAQPage JSON-LD in `<head>`.
   - Add CSS to the article's `<style>` block.
   - Update `dateModified` in the existing Article JSON-LD.
4. Validate: text in `Question.name` and `Answer.text` must appear verbatim on the rendered page.

## Validation

After insert, run a sanity check: every `Question.name` string must be `grep`-able in the same file outside the JSON-LD block. If not, the schema is invalid — fix before reporting done.

## Tone reference (good vs. dry)

**Dry (failure mode):**
> "Projectholic is a project planning app for freelancers and Apple users. It turns goals into structured projects, helps you schedule against the real time you have, and tracks progress over time across iPhone, iPad, and Mac."

This is technically accurate and tells the reader nothing they couldn't infer from the page title. It will be cited but won't drive a download.

**Good (target):**
> "Projectholic turns the projects in your head into a clear plan you can actually finish. Set a goal, break it into milestones, and schedule the work against the real hours you have this week — not the optimistic version. It runs natively on iPhone, iPad, and Mac with iCloud sync, and it's free to download on the App Store."

Same length, same facts, but with a point of view, a concrete contrast ("real hours… not the optimistic version"), and a closing that makes the next click obvious. This is what to aim for.

The bar: would the reader, after reading this answer in an AI Overview, want to click through? If no, rewrite.
