#!/bin/bash

#------------------------------------------------------------------------------
# Install from repo
#------------------------------------------------------------------------------

# sudo apt-get install libopus-dev

#------------------------------------------------------------------------------
# Compile from source
#------------------------------------------------------------------------------

cd $FFMPEG_SOURCE_DIR

wget http://downloads.xiph.org/releases/opus/opus-1.1.2.tar.gz
tar xzvf opus-1.1.2.tar.gz

cd opus-1.1.2

./configure --prefix="$FFMPEG_BUILD_DIR" --disable-shared

make
make install
make clean