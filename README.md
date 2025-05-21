# BISB211203

> You can run this project using **GitHub Codespaces** or on your **local machine**.

## 🚀 Getting Started

### 1. Setting up the Environment

If you're using GitHub Codespaces, open the terminal inside the Codespace.  
If you're running locally, make sure [Miniconda](https://docs.conda.io/en/latest/miniconda.html) is installed.

Create and activate the conda environment using the provided environment file:

```bash
conda env create -f environment.yml
conda activate BISB211203
```
> Note for Codespaces users: If this is your first time using conda in the terminal, run conda init and restart the terminal before activating the environment.

### 2. Launching JupyterLab
Once the environment is active, start JupyterLab with:
```bash
jupyter lab
```

This will open the interactive Jupyter environment where you can follow the course materials for each session:
- [T test](03_T-test.ipynb)
- [ANOVA](04_ANOVA.ipynb)

## Returning Users

If you already made the codespace or clone the repository locally before, you might want to check if your copy is up to date.

You can check by:

```bash
git fetch
git status
```

You will see something like:

```bash
On branch main
Your branch is behind 'origin/main' by 8 commits, and can be fast-forwarded.
  (use "git pull" to update your local branch)

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   03_T-test.ipynb
```

If you want to keep your changes in the file `03_T-test.ipynb`, you can create a copy first:

```bash
cp 03_T-test.ipynb 03_T-test_personal_copy.ipynb
```

Then continue with:

```bash
git stash
git pull
```

If there are changes in the environment, you can update it by:

```bash
conda env update -f environment.yml 
```

Then you can restart the jupyter to continue working on the next example:

```bash
conda activate BISB211203
jupyter lab
```
