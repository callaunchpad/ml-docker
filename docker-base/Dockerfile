FROM nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04
RUN apt-get update 
RUN apt-get upgrade -y 
RUN apt-get install -y \
	ant \
	apt-utils \
	build-essential \
	checkinstall \
	cmake \
	default-jdk \
	doxygen \
	gfortran \
	git \
	libatlas-base-dev \
	libavcodec-dev \
	libavformat-dev \
	libdc1394-22-dev \
	libeigen3-dev \
	libgdal-dev \
	libjasper-dev \
	libjpeg8-dev \
	liblapacke-dev \
	libopencore-amrnb-dev \
	libopencore-amrwb-dev \
	libopenexr-dev \
	libpng-dev \
	libpng12-dev \
	libswscale-dev \
	libtbb-dev \
	libtheora-dev \
	libtiff5-dev \
	libvorbis-dev \
	libv4l-dev \
	libwebp-dev \
	libxine2-dev \
	libxvidcore-dev \
	libx264-dev \
	pkg-config \
	python3-pip \
	sudo \
	vim \
	yasm \
	zip \
	zlib1g-dev
RUN alias python=python3
RUN echo "alias python=python3" >> ~/.bashrc
RUN pip3 install --upgrade pip 
RUN pip install \
	matplotlib \
	numpy \
	pandas \
	scipy \
	sklearn \
	tensorflow-gpu

COPY tf-gpu-verify.py /root/

RUN mkdir -p /usr/local/installers
COPY install-opencv.sh /usr/local/installers/
RUN bash /usr/local/installers/install-opencv.sh

RUN git clone https://github.com/torch/distro.git /root/torch --recursive
RUN cd /root/torch; bash /root/torch/install-deps; bash /root/torch/install.sh

#Luarocks => Luasucks. Can't even install multiple modules on one line???
RUN /root/torch/install/bin/luarocks install cutorch 
RUN /root/torch/install/bin/luarocks install cunn 
RUN /root/torch/install/bin/luarocks install cudnn

