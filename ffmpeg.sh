#!/bin/bash

#------------------------------------------------------------------------------
# Compile from FFmpeg source and its libraries
#------------------------------------------------------------------------------

cd $FFMPEG_SOURCE_DIR

wget http://ffmpeg.org/releases/ffmpeg-snapshot.tar.bz2
tar xjvf ffmpeg-snapshot.tar.bz2

cd ffmpeg

PATH="$FFMPEG_BIN_DIR:$PATH" PKG_CONFIG_PATH="$FFMPEG_BUILD_DIR/lib/pkgconfig" ./configure \
  --prefix="$FFMPEG_BUILD_DIR" \
  --pkg-config-flags="--static" \
  --extra-cflags="-I$FFMPEG_BUILD_DIR/include" \
  --extra-ldflags="-L$FFMPEG_BUILD_DIR/lib" \
  --bindir="$FFMPEG_BIN_DIR" \
  --enable-gpl \
  --enable-libass \
  --enable-libfdk-aac \
  --enable-libfreetype \
  --enable-libmp3lame \
  --enable-libopus \
  --enable-libtheora \
  --enable-libvorbis \
  --enable-libvpx \
  --enable-libx264 \
  --enable-libx265 \
  --enable-nonfree

PATH="$FFMPEG_BIN_DIR:$PATH" make
make install
make distclean
hash -r
