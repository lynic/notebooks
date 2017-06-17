FROM tensorflow/tensorflow:1.2.0-gpu-py3

ENV TORCH_WHL=http://download.pytorch.org/whl/cu80/torch-0.1.12.post2-cp35-cp35m-linux_x86_64.whl

RUN apt-get update && \
    # apt-get install -y tk-dev python-tk zlib1g-lib cmake && \
    apt-get install -y swig cmake libhdf5-dev libjpeg-dev golang python-opencv && \
    pip install keras h5py scikit-image pygame gym[all] && \
    # pip install universe && \
    pip install $TORCH_WHL && \
    pip install torchvision && \
    apt-get install -y vim git
