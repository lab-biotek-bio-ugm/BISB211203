# BISB211203 - Biostatistika (Quarto Book Course)

## What this repo is
A Quarto book for biostatistics at Universitas Gadjah Mada. `.Rmd` files are the active chapters; `.qmd` files exist as backups. Not a software project — no tests, linters, or build pipeline beyond Quarto rendering.

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
CI (`.github/workflows/publish.yml`) runs `quarto render` on push to `main` and deploys `_book/` to `cf-pages` branch via `peaceiris/actions-gh-pages@v4`.

## File structure
- `_quarto.yml` — book config; chapter order in `book.chapters`; resources include `functions/`
- `*.Rmd` — active chapters (00–05: R basics, T-test, ANOVA, Chi-square)
- `*.qmd` — backups of the same chapters (not in `_quarto.yml` chapter list)
- `index.qmd`, `references.qmd` — book front/back matter
- `assets/data/` — TSV/CSV datasets used by notebooks
- `scripts/*.R` — R data preparation scripts
- `assets/answers/` — rendered answer notebooks (`.html`)
- `renv/` — project-local library (gitignored except `activate.R` and `lock`)
- `_book/`, `.quarto/` — rendered output and cache (gitignored)

## Key quirks
- **renv manages packages** — `renv.lock` pins exact versions; use `renv::restore()` to install
- **R 4.5.3** — check `renv.lock` for exact R version compatibility
- **`.Rprofile`** sets working directory to repo root and sources `renv/activate.R`
- **Chapter order** is defined in `_quarto.yml` under `book.chapters`, not by filename sort order
- **`.Rmd` files** are the active chapters; `.qmd` files are unused backups
- **Data files** use `.tsv` and `.csv` extensions; check `assets/data/` for available datasets

## OpenCode skills
`.opencode/skills` is a symlink to `/home/matinnu/drive_a/matinnu/courses/education-agent-skills/skills/` (21 domains). Load skills with the `skill` tool when improving course design.

## CI
Push to `main` triggers: checkout → conda setup (R 4.3.3 / Python 3.12) → Quarto + TinyTeX install → `quarto render` → deploy to `cf-pages`.
