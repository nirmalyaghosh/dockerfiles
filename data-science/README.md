Data Science Docker Image
================================
Docker image with essential Python & R packages installed.

### Getting Started
I assume you already have Docker installed, if you don't, please [download](https://docs.docker.com/engine/installation/) and install it.
1. `docker build -t data-science:latest .`
2. `docker run -d -p 8787:8787 -e PASSWORD=yourpassword data-science`
3. The RStudio server can be accessed via `http://{ip-address}:8787/`. Username/password : rstudio/yourpassword

### What's Installed

- Python, 3.5.2
  - numpy, 1.13.1
  - pandas, 0.20.3
  - scikit-learn, 0.19.0
  - scipy, 0.19.1
  - xgboost, 0.6a2
  - Some other packages
- R version 3.4.1
  - R packages `data.table`, `dplyr`, `xgboost` and 60+ other packages
