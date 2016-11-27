#!/bin/bash

#------------------------------------------------------------------------------
# Install from repo
#------------------------------------------------------------------------------

# sudo apt-get install libx264-dev

#------------------------------------------------------------------------------
# Compile from source
#------------------------------------------------------------------------------

cd $FFMPEG_SOURCE_DIR

wget http://download.videolan.org/pub/x264/snapshots/last_x264.tar.bz2
tar xjvf last_x264.tar.bz2

cd x264-snapshot*

PATH="$FFMPEG_BIN_DIR:$PATH" ./configure --prefix="$FFMPEG_BUILD_DIR" --bindir="$FFMPEG_BIN_DIR" --enable-static --disable-opencl
PATH="$FFMPEG_BIN_DIR:$PATH" make

make install
make distclean