# BISB211203

> Open **BISB211203.Rproj** in RStudio to get started.

## 🚀 Getting Started

### 1. Setting up the Environment

Make sure [Miniconda](https://docs.conda.io/en/latest/miniconda.html) is installed.

```bash
conda env create -f environment.yml
conda activate BISB211203
```

### 2. Launch RStudio

```bash
rstudio BISB211203.Rproj
```

Or open `BISB211203.Rproj` directly from RStudio's File menu.

### 3. Install Packages (if needed)

For fresh R installations:
```bash
Rscript setup.R
```

### 4. Start Learning

Open any `.Rmd` file and click **"Knit"** or **"Run All"** (Ctrl+Shift+Enter).

## Returning Users

```bash
git fetch
git status
```

If you want to keep your changes in a file:
```bash
cp 00_r-basics.Rmd 00_r-basics_personal_copy.Rmd
git stash
git pull
```

If there are changes in the environment:
```bash
conda env update -f environment.yml
```
