FROM ubuntu:16.04

LABEL Richard Sentino "richard@mindginative.com"

# Environment variables
ENV ROOTDIR $HOME/root
ENV FFMPEG_SOURCE_DIR $ROOTDIR/ffmpeg_sources
ENV FFMPEG_BUILD_DIR $ROOTDIR/ffmpeg_build
ENV FFMPEG_BIN_DIR $ROOTDIR/ffmpeg_bin
ENV term xterm

# Working directory
WORKDIR $ROOTDIR

RUN mkdir -p $FFMPEG_SOURCE_DIR
RUN mkdir -p $FFMPEG_BUILD_DIR
RUN mkdir -p $FFMPEG_BIN_DIR

# Dependencies
RUN apt-get update
RUN \
    apt-get -y install \
    autoconf \
    automake \
    build-essential \
    libass-dev \
    libfreetype6-dev \
    libsdl1.2-dev \
    libtheora-dev \
    libtool \
    libva-dev \
    libvdpau-dev \
    libvorbis-dev \
    libxcb1-dev \
    libxcb-shm0-dev \
    libxcb-xfixes0-dev \
    pkg-config \
    texinfo \
    zlib1g-dev \
    wget \
    nasm \
    cmake-curses-gui \
    cmake \
    mercurial

COPY libraries libraries

RUN chmod +x libraries/*.sh

RUN /bin/bash libraries/yasm.sh
RUN /bin/bash libraries/libx264.sh
# RUN /bin/bash libraries/libx265.sh
RUN /bin/bash libraries/libfdk-aac.sh
RUN /bin/bash libraries/libmp3lame.sh
RUN /bin/bash libraries/libopus.sh
RUN /bin/bash libraries/libvpx.sh
RUN /bin/bash libraries/ffmpeg.sh
