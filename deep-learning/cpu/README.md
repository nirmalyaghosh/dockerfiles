Deep Learning Docker Image (CPU-only version)
================================
Docker image with essential deep learning packages installed ([Keras](https://keras.io/), [TensorFlow](https://www.tensorflow.org/), [CNTK](https://docs.microsoft.com/en-us/cognitive-toolkit/) etc.).
This is a Dockerized version of my older [Deep Learning VM](https://github.com/nirmalyaghosh/deep-learning-vm) project.

### Getting Started
I assume you already have Docker installed, if you don't, please [download](https://docs.docker.com/engine/installation/) and install it.
1. First, build the container, `docker build -t deep-learning-cpu:latest .`
2. Next, run the container, `docker run --rm -d -p 9000:9000 -v "$HOME/projects:/projects/" --name dlcontainer deep-learning-cpu:latest`
   A local directory `projects` is mounted to the `projects` directory inside the container, `dlcontainer`.
3. The Jupyter notebooks can be accessed via `http://{ip-address}:9000/`
4. To access container, run `docker exec -it dlcontainer /bin/bash`

### What's Installed
- Keras, [2.2.0](https://github.com/keras-team/keras/releases/tag/2.2.0)
- TensorFlow, [1.8.0](https://github.com/tensorflow/tensorflow/releases/tag/v1.8.0)
- CNTK, [2.5.1](https://docs.microsoft.com/en-us/cognitive-toolkit/)
- Python, 3.6.5
- numpy, 1.14.5
- pandas, 0.23.1
- scipy, 1.1.0
