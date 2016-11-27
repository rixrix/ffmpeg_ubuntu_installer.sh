#!/bin/bash

#------------------------------------------------------------------------------
# Install from repo
#------------------------------------------------------------------------------

# sudo apt-get install libmp3lame-dev

#------------------------------------------------------------------------------
# Compile from source
#------------------------------------------------------------------------------

sudo apt-get -y install nasm

cd $FFMPEG_SOURCE_DIR

wget http://downloads.sourceforge.net/project/lame/lame/3.99/lame-3.99.5.tar.gz
tar xzvf lame-3.99.5.tar.gz

cd lame-3.99.5

./configure --prefix="$FFMPEG_BUILD_DIR" --enable-nasm --disable-shared

make
make install
make distclean