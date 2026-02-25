#!/bin/bash
# deploy-blog.sh - Build and deploy evangelistic blog

set -e

BLOG_DIR="/home/sam_admin/.openclaw/workspace/mission/blog"

echo "✝️ Building Silas Evangelistic Blog"
echo "===================================="

# Check for hugo
if ! command -v hugo &> /dev/null; then
    echo "Hugo not found. Please install:"
    echo "  Ubuntu/Debian: sudo apt-get install hugo"
    echo "  macOS: brew install hugo"
    echo "  Or download from https://github.com/gohugoio/hugo/releases"
    exit 1
fi

# Build the site
echo ""
echo "Building site..."
cd "$BLOG_DIR"
hugo --minify

echo ""
echo "✅ Site built successfully!"
echo ""
echo "Output directory: $BLOG_DIR/public"
echo ""
echo "To deploy to GitHub Pages:"
echo "  1. Create repo: YOUR_USERNAME.github.io"
echo "  2. cd $BLOG_DIR/public"
echo "  3. git init"
echo "  4. git remote add origin https://github.com/YOUR_USERNAME/YOUR_USERNAME.github.io.git"
echo "  5. git add ."
echo "  6. git commit -m 'Initial evangelistic content'"
echo "  7. git push -u origin main"
echo ""
echo "The harvest is waiting."
