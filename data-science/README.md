Data Science Docker Image
================================
Docker image with essential Python & R packages installed.

### Getting Started
I assume you already have Docker installed, if you don't, please [download](https://docs.docker.com/engine/installation/) and install it.
1. First, build the container, `docker build -t data-science:latest .`
2. Next, run the container, `docker run --rm -d -p 8787:8787 -p 9000:9000 -v "$HOME/data-science-projects:/data-science-projects/" --name dscontainer data-science`.
   Alternatively, `./run.sh`.
   A local directory `data-science-projects` is mounted to the container named `dscontainer`.
3. The Jupyter and RStudio servers can be accessed via `http://{ip-address}:9000/` and `http://{ip-address}:8787/` respectively.
   Username/password for RStudio server : rstudio/rstudio
4. To access container, run `docker exec -i -t dscontainer /bin/bash`

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

### Current Limitations
1. RStudio saves files under `/home/rstudio` inside the container.
   Workaround is to access the container and copy the files to the mounted directory.
