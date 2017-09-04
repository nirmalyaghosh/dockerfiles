Deep Learning Docker Image (CPU-only version)
================================
Docker image with essential deep learning packages installed ([Keras](https://keras.io/), [TensorFlow](https://www.tensorflow.org/), etc.).
This is a Dockerized version of my older [Deep Learning VM](https://github.com/nirmalyaghosh/deep-learning-vm) project.

### Getting Started
I assume you already have Docker installed, if you don't, please [download](https://docs.docker.com/engine/installation/) and install it.
1. First, build the container, `docker build -t deep-learning:latest .`
2. Next, run the container, `docker run -t -i --name dlcontainer deep-learning /bin/bash`

### What's Installed
- Keras, 2.0.6
- TensorFlow, 1.3.0
- Theano, 0.8.2
- Python, 3.5.2
- numpy, 1.11.3
- pandas, 0.20.3
- scipy, 0.19.0
