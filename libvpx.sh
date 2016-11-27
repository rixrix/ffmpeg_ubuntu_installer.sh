#!/bin/bash

#------------------------------------------------------------------------------
# Compile from source
#------------------------------------------------------------------------------

cd $FFMPEG_SOURCE_DIR

wget http://storage.googleapis.com/downloads.webmproject.org/releases/webm/libvpx-1.5.0.tar.bz2
tar xjvf libvpx-1.5.0.tar.bz2

cd libvpx-1.5.0

PATH="$FFMPEG_BIN_DIR:$PATH" ./configure --prefix="$FFMPEG_BUILD_DIR" --disable-examples --disable-unit-tests
PATH="$FFMPEG_BIN_DIR:$PATH" make

make install
make clean