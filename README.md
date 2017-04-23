# FFmpeg Ubuntu Build & Installer Script

https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu

> This guide for supported releases of Ubuntu, Debian, and Linux Mint will provide a local install of the latest FFmpeg tools and libraries including several external encoding and decoding libraries (codecs). This will not interfere with repository packages.

## Motivation

see [blog post](http://yup-the-website-domain-is.mindginative.com/post/install-ffmpeg-from-source-ubuntu-win10/)

## Setup

All of download sources, build folder and binaries are isolated and by default located in your home folder.

* `~/.ffmpeg_sources` - all downloaded sources
* `~/.ffmpeg_build` - sources build location, some libraries have their linked libraries and binaries drop in here, so you would see a `bin`, `share or `lib` folders inside
* `~/.ffmpeg_bin` - executable binaries

## Install

Just run the script, the installer follows the sequence from the FFmpeg's [Ubuntu compilation guide](https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu).
By default, it will install all libraries.
Depending on your machine, it might take a while - go get a coffee

* `git clone https://github.com/rixrix/ffmpeg_ubuntu_installer.sh.git`
* `chmod +x path/to/build.sh`
* `/bin/bash path/to/build.sh`

## HowTo

### Quick Way

`docker run -it --rm <image id> bash`

### Best Way

mount a host folder into the container:

```
docker run -it --rm -v `pwd`/data:/mnt/data <image id> bash
```


## Uninstall

This is a throw-away machine with Docker, so you just scrap the image or the container.

* Delete the image: `docker rmi <insert image id>`
* Delete the container: `docker rm <insert container id>`

## Tested on the following OS environment

* Ubuntu 14.04.5 LTS on Windows 10 via Bash (work and dev machine) before moving to Dockerised version
* Ubuntu 16.04 on Docker machine

## Caveats

* Temporarily disabled libx265

## TODO

* Make a parameterised build aka pick-n-match libraries
* Docs