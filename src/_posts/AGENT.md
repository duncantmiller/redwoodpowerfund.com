# Blog Post Formatting Standards

## Front Matter

```yaml
---
layout: post
title: "Title in quotes"
description: "Short description for SEO/preview"
date: YYYY-MM-DD
categories: [tag1, tag2]   # kept short; these appear in the URL with pretty permalinks
author: "Author Name"
image: /path/to/image.jpg  # optional — omit if no image; do NOT leave blank
---
```

- `image` is optional. If there is no image, omit the field entirely — do not leave it as an empty string. An empty or missing image will be hidden automatically.

## Headings

- **Do not use `#` (h1)** — the page title is already rendered as h1 by the layout.
- **`##` (h2)** — top-level section headers within the article.
- **`###` (h3)** — sub-section headers. Use these when a section needs a second level of hierarchy.
- Avoid going deeper than h3 in blog posts.

## Numbered Sections

**Do not write numbered sections as plain text like `2. Section Title`.** Markdown parses `N. text` as an ordered list item.

Use headings instead:
```markdown
## Section Title
```

## URLs and Categories

The site uses `permalink: pretty` in `bridgetown.config.yml`. Under this setting, Bridgetown builds URLs by joining categories + date + slug:

```
/category-one/category-two/YYYY/MM/DD/post-slug/
```

**Example:** a post dated 2026-04-04 with `categories: [startups, robotics]` produces:
```
/startups/robotics/2026/04/04/post-slug/
```

**Consequences:**
- Changing or removing categories changes the URL and breaks existing links.
- Choose categories carefully before publishing — treat them as permanent once live.
- Fewer categories = shorter, cleaner URLs. Prefer 1–2 per post.
- If a post has no categories, the URL is just `/YYYY/MM/DD/post-slug/`.

## Images

- Provide images in the front matter `image` field when available.
- Aspect ratio 16:9 recommended.
- If no image exists, omit the field.
