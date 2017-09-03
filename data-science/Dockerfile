FROM rocker/rstudio:3.4.1

ENV ANACONDA_PATH /opt/anaconda
ENV ANACONDA_VERSION Anaconda3-4.2.0-Linux-x86_64.sh
ENV PATH $ANACONDA_PATH/bin:$PATH

RUN apt-get update \
  && apt-get install bzip2 \
  && apt-get install -y --no-install-recommends \
    git \
    wget \
  && apt-get install -y supervisor \
  && apt-get install -y xvfb \
  && wget -nv -O anaconda.sh https://repo.continuum.io/archive/$ANACONDA_VERSION \
  && /bin/bash anaconda.sh -b -p $ANACONDA_PATH \
  && conda update -y conda \
  && conda update -y numpy \
  && conda update -y scipy \
  && conda update -y pandas \
  && apt-get install -y python-pip \
  && apt-get install -y python-dev \
  && pip install xgboost==0.6a2 \
  && rm $downloads/anaconda.sh \
  && conda clean -yt

RUN R -e "install.packages('randomForest')" \
    && R -e "install.packages('xgboost', dependencies=TRUE, repos='http://cran.us.r-project.org')";

RUN mkdir -p /data-science-projects/ \
    && mkdir -p /var/log/supervisor \
    && usermod -a -G root rstudio \
    && usermod -a -G rstudio root
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]
