---
# Canonical
site_url: https://projectholic.pro/
site_name: Projectholic
site_short_description: A project planning app for freelancers and Apple users — turn goals into projects, schedule against real time, and finish what you started.
default_language: en

# Organization (publisher entity)
org_name: Feioustudio
org_id: https://projectholic.pro/#organization
org_url: https://feioustudio.com/
logo_url: https://projectholic.pro/images/appIcon-20260112.png
org_same_as:
  - https://feioustudio.com/
  - https://x.com/feioustudio
  - https://www.reddit.com/r/Projectholic/
  - https://apps.apple.com/app/id6745497754

# Founder / Person (entity author)
person_name: Feiou Su
person_id: https://projectholic.pro/about.html#person
person_url: https://projectholic.pro/about.html
person_job_title: Founder, Feioustudio
person_same_as:
  - https://feioustudio.com/
  - https://x.com/feioustudio

# Contact
contact_email: feiousu@gmail.com

# Design tokens
font_body: Manrope
font_display: Noto Serif
default_palette: dark
accent_default: '#ff8c42'

# App / product
has_app: true
app_store_url: https://apps.apple.com/app/id6745497754
app_platforms: 'iOS, iPadOS, macOS'
app_price: free
app_category: BusinessApplication

# File conventions
blog_dir: blog/
about_path: /about.html
sitemap_path: /sitemap.xml
llms_txt_path: /llms.txt

# IndexNow
indexnow_key: 25eaa45d72da4aeeb6f61302e837c3d1
indexnow_key_file: /25eaa45d72da4aeeb6f61302e837c3d1.txt
---

# Site config notes

## Per-article accent palette

Each blog article picks a slightly different accent on top of the dark base palette. Reference for new articles:

| Article | Accent |
|---|---|
| `index.html` (homepage) | `#ff8c42` (orange — site-wide default) |
| `project-gantt-guide.html` | `#bf5a2a` (warm cream/orange — light palette exception) |
| `best-apps-for-adhd-freelancers.html` | `#86c7ff` (cool blue) |
| `gantt-app-apple-freelancers.html` | `#7bc0ff` (cool blue) |
| `client-project-workflow-apps.html` | `#ffad7a` (warm peach) |
| `freelancer-must-have-apps.html` | `#ffb347` (warm gold) |
| `freelancer-tool-project-planning.html` | `#ffb347` (warm gold) |
| `how-to-plan-project-on-ipad.html` | `#6bb8ff` (fresh Apple blue) |
| `project-planner-vs-todo-list.html` | `#b78bff` (soft purple — comparison signal) |

When writing a new article, pick a fresh-but-related accent from this family. Avoid reusing one already heavily used on the site that month.

## Editorial conventions

- Voice: confident, specific, slightly opinionated. Not marketing fluff.
- Oxford comma: yes.
- Avoid "leverage", "synergy", "supercharge", "unleash", "game-changer".
- Quick Answer blocks must be 40–60 words. FAQ answers 40–80.
- House style is dark theme by default; the gantt guide is the historical light-theme exception.

## Other Feioustudio sites (for reference)

This config is for Projectholic only. Sister sites need their own `.claude/site-config.md`:
- Watermelon Todo
- NearbyGem
- Udoland
