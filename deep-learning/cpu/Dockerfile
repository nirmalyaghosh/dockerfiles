FROM ubuntu:16.04

RUN \
    apt-get update && \
    apt-get install -y \
        build-essential \
        bzip2 \
        ca-certificates \
        sudo \
        wget \
        openmpi-bin \
        git && \
    apt-get clean

ENV LD_LIBRARY_PATH="/usr/lib/openmpi/lib"

# Install Python 3.6, pip, wheel
RUN \
  apt-get install -y software-properties-common \
  && add-apt-repository ppa:jonathonf/python-3.6 \
  && apt-get update \
  && apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv \
  && python3.6 -m pip install pip --upgrade \
  && python3.6 -m pip install wheel

# At this stage we have 3.5 and 3.6.7. Need python3 point to the lattter
RUN \
  update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1 && \
  update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 2

# Install required packages
RUN python3 -m pip install \
  numpy==1.14.5 \
  scipy==1.1.0 \
  scikit-learn==0.20.3 \
  pandas==0.23.1 \
  cntk==2.5.1 \
  keras==2.2.0 \
  tensorflow==1.9.0 \
  https://download.pytorch.org/whl/cpu/torch-1.0.1.post2-cp36-cp36m-linux_x86_64.whl \
  torchvision \
  matplotlib \
  jupyter

RUN apt-get -y autoremove \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir -p /projects/

EXPOSE 9000

CMD jupyter notebook --no-browser --ip=0.0.0.0 --port 9000 --allow-root --notebook-dir=/projects --NotebookApp.token=  
