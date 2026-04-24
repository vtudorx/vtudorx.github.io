# vtudorx.github.io

Personal technical blog — [vtudorx.github.io](https://vtudorx.github.io)

Built with [Hugo](https://gohugo.io) + [PaperMod](https://github.com/adityatelange/hugo-PaperMod). Deployed automatically via GitHub Actions on push to `main`.

## Local setup

```bash
# 1. Clone with submodules (required for PaperMod theme)
git clone --recurse-submodules https://github.com/vtudorx/vtudorx.github.io
cd vtudorx.github.io

# 2. Install Hugo (extended version required), or use Docker below
brew install hugo          # macOS
sudo apt install hugo      # Ubuntu/WSL

# 3. Run locally
hugo server -D             # -D includes drafts
# → http://localhost:1313
```

## Docker workflow

Use Docker if you want to avoid installing Hugo locally. The container is pinned to the same Hugo version used by GitHub Actions.

```bash
make serve    # local preview at http://localhost:1313
make build    # production-style build check
make shell    # shell inside the Hugo container
make clean    # remove generated Hugo output
```

## Writing a new post

```bash
hugo new posts/your-post-slug.md
# Edit content/posts/your-post-slug.md
# Set draft: false when ready to publish
git add . && git commit -m "post: your post title"
git push
# GitHub Actions deploys automatically in ~30 seconds
```

## Structure

```
content/
├── posts/        ← technical articles
├── about.md      ← about page
└── search.md     ← search page (required by PaperMod)
static/
├── llms.txt      ← AI crawler discoverability
└── robots.txt    ← search engine + AI bot permissions
.github/
└── workflows/
    └── deploy.yml ← GitHub Actions deploy pipeline
hugo.yaml          ← site configuration
```

## Deploy

Automatic on push to `main`. Requires GitHub Pages to be configured:
- Settings → Pages → Source: **GitHub Actions**
