#!/bin/bash

#------------------------------------------------------------------------------
# Compile from source
#
# NOTE:
#   - added `cmake-curses-gui` to install ccmake, see https://askubuntu.com/questions/121797/how-do-i-install-ccmake#comment145027_121800
#   - run `./make-Makefiles.bash`, mentioned in https://bitbucket.org/multicoreware/x265/wiki/Home, see `Linux Instructions`
#------------------------------------------------------------------------------

sudo apt-get -y install cmake-curses-gui cmake mercurial

cd $FFMPEG_SOURCE_DIR

hg clone https://bitbucket.org/multicoreware/x265

cd $FFMPEG_SOURCE_DIR/x265/build/linux

PATH="$FFMPEG_BIN_DIR:$FFMPEG_BUILD_DIR/bin:$PATH" cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX="$FFMPEG_BUILD_DIR" -DENABLE_SHARED:bool=off ../../source
./make-Makefiles.bash
make
make install