---
name: aeo-quick-answer
description: Write and insert a 40–60 word "Quick Answer" block at the top of a Projectholic blog article. Use when the user says "add a quick answer", "TL;DR block", "AI Overviews answer", or asks to make an article more citable by ChatGPT/Perplexity/Google AI Overviews.
---

# Quick Answer Block

The Quick Answer is the single highest-leverage AEO change. AI Overviews and LLMs extract from the first paragraph that directly answers the page's core question. If you bury the answer, they pull from a competitor.

## Rules

- **Length: 40–60 words.** Count them. Shorter = less context. Longer = AI truncates.
- **Plain prose**, no bullets, no markdown inside.
- **First sentence directly answers the H1's question.** No preamble like "In this article we'll explore…"
- **Concrete, not hedged.** "Use X when Y" beats "It depends on many factors."
- Use the article's primary entities and search terms once — naturally, not stuffed.
- No first-person fluff ("I think", "we believe"). Authoritative voice.
- End with one practical takeaway or recommendation.

## Placement

Immediately after the article H1 (`<h1>` or hero block), before any subheadings.

## HTML pattern (Projectholic house style)

Match the existing dark theme. Use this snippet:

```html
<aside class="quick-answer" role="note" aria-label="Quick answer">
  <p class="quick-answer-label">Quick answer</p>
  <p class="quick-answer-body"><!-- 40–60 words, single paragraph --></p>
</aside>
```

Add to the article's `<style>` block (or shared CSS):

```css
.quick-answer {
  margin: 0 0 28px;
  padding: 18px 22px;
  border-radius: 14px;
  border: 1px solid var(--stroke);
  background: rgba(134, 199, 255, 0.06);
}
.quick-answer-label {
  margin: 0 0 6px;
  text-transform: uppercase;
  letter-spacing: 0.18em;
  font-size: 0.72rem;
  color: var(--accent);
}
.quick-answer-body {
  margin: 0;
  font-size: 1.02rem;
  line-height: 1.55;
  color: var(--text);
}
```

Use `--accent` colors that already exist on the page (`#86c7ff` on blog articles, `#ff8c42` on the homepage).

## Process

1. Read the article. Identify the H1's implicit question.
2. Draft the answer in 40–60 words. Show the user the draft + word count before inserting.
3. On approval, insert the `<aside>` after the H1 and add the CSS to the article's `<style>` block.
4. Update `dateModified` in the Article JSON-LD schema (since you changed the article).

## Anti-patterns

- Do not use `<blockquote>` — semantics are wrong.
- Do not write "This article will…" — answer the question, don't describe the article.
- Do not exceed 60 words "just to be thorough" — AI truncates.
