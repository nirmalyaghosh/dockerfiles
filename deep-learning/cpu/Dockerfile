FROM ubuntu:14.04

ENV ANACONDA_PATH /opt/anaconda
ENV ANACONDA_VERSION Anaconda3-4.2.0-Linux-x86_64.sh
ENV PATH $ANACONDA_PATH/bin:$PATH
ENV TF_BINARY_URL https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.3.0-cp35-cp35m-linux_x86_64.whl

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    bzip2 \
    build-essential \
    g++ \
    wget \
  && wget --no-check-certificate -nv -O anaconda.sh https://repo.continuum.io/archive/$ANACONDA_VERSION \
  && /bin/bash anaconda.sh -b -p $ANACONDA_PATH \
  && pip install $TF_BINARY_URL \
  && conda install -y \
    h5py \
    pandas \
    "Theano==0.8.2" \
  && conda install -c conda-forge keras=2.0.6 \
  && rm $downloads/anaconda.sh \
  && conda clean -ytps \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get autoclean \
  && apt-get autoremove
