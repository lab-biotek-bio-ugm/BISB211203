# BISB211203

> Open **BISB211203.Rproj** in RStudio to get started.

## Getting Started

### Clone the Repository

**From RStudio (recommended):**
1. File → New Project → Version Control → Git
2. Enter repository URL: `https://github.com/lab-biotek-bio-ugm/BISB211203`
3. Click "Create Project"

**From terminal:**
```bash
git clone https://github.com/lab-biotek-bio-ugm/BISB211203
cd BISB211203
```

### Restore Packages with renv

This project uses [renv](https://rstudio.github.io/renv/) for package management. renv creates a project-local library so all students get the exact same package versions.

On first open of `BISB211203.Rproj`, RStudio will prompt: *"A renv environment was detected. Would you like to activate it?"* → Click **Yes**.

If renv doesn't activate automatically, run in the R console:
```r
renv::restore()
```

This installs all required packages from `renv.lock` into a project-local library. No system-wide package installation is needed.

### Start Learning

Open any `.Rmd` file and click **"Knit"** or **"Run All"** (Ctrl+Shift+Enter).

## Returning Users

```bash
git fetch
git pull
```

If `renv.lock` has been updated, restore packages:
```r
renv::restore()
```

If you want to keep your changes in a file:
```bash
cp 00_r-basics.Rmd 00_r-basics_personal_copy.Rmd
git stash
git pull
```
