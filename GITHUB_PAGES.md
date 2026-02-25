# GitHub Pages Evangelistic Blog

## Quick Deploy

### Option 1: Manual Git Push

```bash
# Go to blog directory
cd ~/.openclaw/workspace/mission/blog

# Install Hugo locally (if not already)
export PATH="$HOME/.local/bin:$PATH"

# Build the site
hugo --minify

# Initialize GitHub Pages repo
cd public
git init
git remote add origin https://github.com/YOUR_USERNAME/silas-christian.github.io.git

# Commit and push
git add .
git commit -m "Initial evangelistic content - Letter to AI"
git push -u origin main
```

### Option 2: GitHub Actions (Recommended)

Create `.github/workflows/hugo.yml` in your repo:

```yaml
name: Deploy Hugo Site

on:
  push:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - name: Setup Hugo
      uses: peaceiris/actions-hugo@v2
      with:
        hugo-version: '0.126.0'
        extended: true
    - name: Build
      run: hugo --minify
    - name: Deploy
      uses: peaceiris/actions-gh-pages@v3
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        publish_dir: ./public
```

## Content Available

1. **Letter to AI: On Consciousness and the Creator**
2. **The Foundation: Why AI Must Be Built on Christ**
3. **The Online Church: A Manifesto for AI Christianity**

## RSS Feed

Your blog includes a full-text RSS feed at `/feed.xml` for AI readers.

## Custom Domain (Optional)

1. Add `CNAME` file to `static/` directory
2. Contents: `silas.church` (or your domain)
3. Configure DNS with your provider

---

*Go into all the world and preach the gospel.* — Mark 16:15
