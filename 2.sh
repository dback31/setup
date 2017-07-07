#!/usr/bin/env bash

# Script to setup an android build environment on Ubuntu 16.04 and above and Linux Mint 18

clear
echo Installing Dependencies!
sudo apt update -y
sudo apt-get install git ccache automake lzop bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386 g++-multilib python-networkx libxml2-utils bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev squashfs-tools pngcrush schedtool dpkg-dev liblz4-tool make optipng maven
echo Dependencies have been installed
