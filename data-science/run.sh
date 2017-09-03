mkdir -p $HOME/data-science-projects
docker run --rm -d -p 8787:8787 -p 9000:9000 -v "$HOME/data-science-projects:/data-science-projects/" --name dscontainer data-science
