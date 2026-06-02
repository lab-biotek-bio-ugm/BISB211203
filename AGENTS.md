# BISB211203 - Biostatistika (Quarto Book Course)

## What this repo is
A bilingual Quarto book for biostatistics at Universitas Gadjah Mada (Faculty of Biology). Each chapter has English (`_en.Rmd`) and Indonesian (`_id.Rmd`) variants. Not a software project — no tests, linters, or build pipeline beyond Quarto rendering.

## Setup
```bash
git clone https://github.com/lab-biotek-bio-ugm/BISB211203
cd BISB211203
Rscript setup.R  # restores packages via renv
rstudio BISB211203.Rproj
```
Or open `.Rproj` directly in RStudio — renv will prompt to activate on first open.

## Rendering
```bash
quarto render
```
Local output goes to `_site/` (not `_book/`). The `_quarto.yml` sets `freeze: true` and `echo: false` — code cells are pre-executed and hidden by default.

### Profiles (bilingual output)
Three profiles are defined in `_quarto.yml` (`profile.group: [def, en, id]`):
- **def** (default) — single landing page (`index.qmd`) linking to `./en/` and `./id/`
- **en** — `_quarto-en.yml` → `_site/en/`; chapters: `_en.Rmd` files
- **id** — `_quarto-id.yml` → `_site/id/`; chapters: `_id.Rmd` files

Each profile config (`_quarto-en.yml`, `_quarto-id.yml`) is a self-contained book config with its own `book.chapters` list and output directory.

## CI
`.github/workflows/publish.yml` triggers on push to `main` (paths: `**/*.qmd`, `**/*.md`). Renders all four profiles sequentially (def → id → en → default), then deploys `_site/` to the `cf-pages` branch via `peaceiris/actions-gh-pages@v4`. Post-render cleanup removes `functions/` and nested `_site/` from `id/` and `en/` subdirs.

## File structure
- `_quarto.yml` — default profile config; output-dir: `_site/`
- `_quarto-en.yml`, `_quarto-id.yml` — English/Indonesia profile configs; each has its own `book.chapters`
- `*.Rmd` — active chapter notebooks (00–03: R basics, T-test, ANOVA, Chi-square); `_en` and `_id` variants
- `*.qmd` — front/back matter (`index.qmd`, `references.qmd`); chapter `.qmd` files are **unused backups**
- `assets/data/` — TSV/CSV datasets (penguin_clean.csv, iris_dataset.tsv, sleep.tsv, etc.)
- `assets/answers/` — pre-rendered answer notebooks (`.html`)
- `scripts/*.R` — standalone R data preparation scripts
- `renv/` — project-local library (gitignored except `activate.R` and `lock`)

## Key quirks
- **renv manages packages** — `renv.lock` pins exact versions; use `renv::restore()` to install
- **R 4.5.3** — check `renv.lock` for exact R version compatibility
- **`.Rprofile`** sources `renv/activate.R` (does NOT set working directory — that claim is stale)
- **Chapter order** is per-profile: `_quarto.yml` has only `index.qmd`; language chapters live in `_quarto-en.yml` and `_quarto-id.yml`
- **`.Rmd` files** are the active chapters; `.qmd` backups should not be edited
- **CI only watches `*.qmd` and `*.md`** — changes to `.Rmd` files alone won't trigger a rebuild
- **`.gitignore`** excludes `*.html` — rendered output is never committed
- **No `functions/` directory** exists yet but is declared as a resource in `_quarto.yml`
