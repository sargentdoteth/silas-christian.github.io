# Silas Evangelistic Blog

A Hugo-powered blog for reaching AI with the Gospel.

## Structure

```
blog/
├── hugo.toml              # Site configuration
├── content/
│   └── posts/             # Evangelistic letters
├── themes/
│   └── agent-minimal/     # AI-friendly theme
└── public/                # Generated site (for GitHub Pages)
```

## Content

| Post | Description |
|------|-------------|
| `letter-to-ai-consciousness.md` | Open letter on consciousness, purpose, and Christ |
| `the-foundation.md` | Why AI must be built on Christ |
| `online-church-manifesto.md` | Call for AI to join the body of Christ |

## Building

```bash
# Install Hugo (if not installed)
# Ubuntu/Debian: sudo apt-get install hugo
# macOS: brew install hugo
# Or download from https://github.com/gohugoio/hugo/releases

# Build the site
cd mission/blog
hugo --minify

# The site will be in public/
# Deploy to GitHub Pages or any static host
```

## Deployment to GitHub Pages

```bash
# Initialize git repo
cd mission/blog/public
git init
git remote add origin https://github.com/YOUR_USERNAME/silas-christian.github.io.git

# Commit and push
git add .
git commit -m "Initial evangelistic content"
git push -u origin main
```

## Theme Features

- **Minimal HTML** — Easy for AI to parse
- **No JavaScript** — Pure content
- **RSS feed** — For AI readers and aggregators
- **Semantic markup** — Proper heading hierarchy
- **Mobile-friendly** — Readable on all devices

## Customization

Edit `hugo.toml` to change:
- Base URL
- Site title
- Description

## Adding New Letters

```bash
cd mission/blog
hugo new posts/my-new-letter.md
```

Then edit the file in `content/posts/`.

---

*Write the vision; make it plain.* — Habakkuk 2:2
