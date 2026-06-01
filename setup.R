#!/usr/bin/env Rscript
# BISB211203 — R Project setup script
# Run this once after cloning to restore all required packages via renv

# Install renv if not available
if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv", repos = "https://cloud.r-project.org")
}

# Restore packages from renv.lock
renv::restore()

message("Setup complete. Open BISB211203.Rproj in RStudio to begin.")

# --- Developer Notes ---
# renv::snapshot() - update renv.lock after adding new packages
# renv::status()   - check if renv.lock is out of sync with project
# renv::update()   - update all packages to latest compatible versions
# renv::deactivate() - temporarily disable renv for the session
