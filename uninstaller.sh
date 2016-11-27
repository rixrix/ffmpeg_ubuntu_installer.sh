#!/bin/bash

#------------------------------------------------------------------------------
# Uninstaller
#
# Note
#   - excluded `build-essential`, `autoconf`, `automake`
#------------------------------------------------------------------------------

# packages from dependenceis.sh
sudo apt-get -y autoremove \
    cmake \
    libass-dev \
    libfreetype6-dev \
    libmp3lame-dev \
    libopus-dev \
    libsdl1.2-dev \
    libtheora-dev \
    libtool \
    libva-dev \
    libvdpau-dev \
    libvorbis-dev \
    libvpx-dev \
    libx264-dev \
    libxcb1-dev \
    libxcb-shm0-dev \
    ibxcb-xfixes0-dev \
    mercurial \
    texinfo \
    zlib1g-dev

# packages from libmp3lame.sh
sudo apt-get -y autoremove \
    nasm

# packages from libx265.sh
sudo apt-get -y autoremove \
    cmake-curses-gui

# custom folder
rm -frv $HOME/.ffmpeg_*