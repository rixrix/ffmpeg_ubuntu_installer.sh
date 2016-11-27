#!/bin/bash

#------------------------------------------------------------------------------
# Install required dependencies and directories
#------------------------------------------------------------------------------

mkdir -p $FFMPEG_BUILD_DIR $FFMPEG_SOURCE_DIR $FFMPEG_BIN_DIR

sudo apt-get update
sudo apt-get -y install \
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
    zlib1g-dev
