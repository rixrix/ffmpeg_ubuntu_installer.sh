#!/bin/bash

#------------------------------------------------------------------------------
# Compile from source
#
# Package:
#   - yasm
#------------------------------------------------------------------------------

cd $FFMPEG_SOURCE_DIR

wget http://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz
tar xzvf yasm-1.3.0.tar.gz

cd yasm-1.3.0

./configure --prefix="$FFMPEG_BUILD_DIR" --bindir="$FFMPEG_BIN_DIR"

make
make install
make distclean
