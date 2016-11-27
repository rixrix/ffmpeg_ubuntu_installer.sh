#!/bin/bash

#------------------------------------------------------------------------------
# Install from repo
#------------------------------------------------------------------------------

# sudo apt-get install libfdk-aac-dev

#------------------------------------------------------------------------------
# Compile from source
#------------------------------------------------------------------------------

cd $FFMPEG_SOURCE_DIR

wget -O fdk-aac.tar.gz https://github.com/mstorsjo/fdk-aac/tarball/master
tar xzvf fdk-aac.tar.gz

cd mstorsjo-fdk-aac*

autoreconf -fiv
./configure --prefix="$FFMPEG_BUILD_DIR" --disable-shared

make
make install
make distclean