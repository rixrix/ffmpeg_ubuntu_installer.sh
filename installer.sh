#!/bin/bash

#------------------------------------------------------------------------------
# FFmpeg Ubuntu Installer
#   - This should supposedly make your life easier
#------------------------------------------------------------------------------

export FFMPEG_SOURCE_DIR="$HOME/.ffmpeg_sources"
export FFMPEG_BUILD_DIR="$HOME/.ffmpeg_build"
export FFMPEG_BIN_DIR="$HOME/.ffmpeg_bin"

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # source http://stackoverflow.com/a/246128

$CURRENT_DIR/dependencies.sh
$CURRENT_DIR/yasm.sh
$CURRENT_DIR/libx264.sh
$CURRENT_DIR/libx265.sh
$CURRENT_DIR/libfdk-aac.sh
$CURRENT_DIR/libmp3lame.sh
$CURRENT_DIR/libopus.sh
$CURRENT_DIR/libvpx.sh
$CURRENT_DIR/ffmpeg.sh

echo "FFmpeg installed!"