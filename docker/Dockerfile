FROM tensorflow/tensorflow:latest-gpu-jupyter

RUN apt-get update \
	&& apt-get upgrade --yes \
	&& apt-get install --yes \
	ca-certificates \
	apt-transport-https \
	apt-utils \
	gnupg software-properties-common \
	wget curl

RUN apt install --yes tree 

RUN apt update 
RUN apt-get install ffmpeg libsm6 libxext6  -y

RUN python3 -m pip install --upgrade pip

RUN pip install matplotlib \
	pip install opencv-python 


RUN git clone https://github.com/akTwelve/Mask_RCNN.git mask_rcnn \
    && cd mask_rcnn \
    && pip3 install -r requirements.txt \
    && python3 setup.py install

RUN pip install scipy
RUN pip install tensorflow-datasets
RUN pip install tensorflow-hub
RUN pip install scikit-image
RUN pip install pandas
RUN pip install neptune-client

# RUN pip install ipython[all]
# RUN pip install h5py
# RUN pip install imgaug
# RUN pip install Cython
# RUN pip install Pillow
# RUN pip install neptune-client
RUN pip install pycocotools

## to open another interective terminal
## docker exec -it docker-gpu /bin/bash

