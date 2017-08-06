FROM tensorflow/tensorflow:1.2.0-gpu-py3

ENV TORCH_WHL=http://download.pytorch.org/whl/cu80/torch-0.2.0.post1-cp35-cp35m-manylinux1_x86_64.whl

RUN apt-get update && \
    # apt-get install -y tk-dev python-tk zlib1g-lib cmake && \
    apt-get install -y xvfb x11vnc xterm ratpoison && \
    apt-get install -y swig cmake libhdf5-dev libjpeg-dev golang python-opencv && \
    pip install keras h5py scikit-image pygame gym[all] && \
    # pip install universe && \
    pip install $TORCH_WHL && \
    pip install torchvision && \
    apt-get install -y git vim git && \
    # git clone https://github.com/pdollar/coco /opt/coco && \
    # cd /opt/coco/pythonAPI && \
    # make && \
    apt-get clean && \
    rm -r /var/lib/apt/lists/* /root/.cache/pip/

RUN echo "#!/bin/bash" > /opt/run.sh && \
    echo '/usr/bin/xvfb-run -s "-screen 0 1280x720x24" /usr/local/bin/jupyter-notebook --allow-root --no-browser --ip=0.0.0.0 --notebook-dir=/notebooks' >> /opt/run.sh && \
    chmod a+x /opt/run.sh

CMD ["/opt/run.sh"]
