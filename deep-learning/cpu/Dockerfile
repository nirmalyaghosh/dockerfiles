FROM ubuntu:14.04

ENV MINICONDA_PATH /opt/miniconda
ENV MINICONDA_VERSION Miniconda3-4.5.4-Linux-x86_64.sh
ENV PATH $MINICONDA_PATH/bin:$PATH

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    bzip2 \
    build-essential \
    wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget --no-check-certificate -nv -O miniconda.sh https://repo.continuum.io/miniconda/$MINICONDA_VERSION \
  && /bin/bash miniconda.sh -b -p $MINICONDA_PATH \
  && rm $downloads/miniconda.sh

RUN conda install -y \
  h5py \
  jupyter \
  matplotlib \
  pandas \
  && conda install -c conda-forge tensorflow=1.8.0 \
  && conda install -c conda-forge keras=2.2.0 \
  && conda clean -ytps \
  && mkdir -p /projects/

EXPOSE 9000

CMD jupyter notebook --no-browser --ip=0.0.0.0 --port 9000 --allow-root --notebook-dir=/projects --NotebookApp.token=  
