#! /bin/bash

sudo yum update
sudo yum upgrade

sudo yum install -y software-properties-common
sudo yum install -y curl # if you haven't already installed curl
sudo yum install -y sudo
sudo yum install -y vim
sudo yum install -y emacs
sudo yum install -y bash-completion
sudo yum install -y command-not-found
sudo yum install -y build-essential
sudo yum install -y cppcheck clang-tidy
sudo yum install -y clang
sudo yum install -y pkg-config
sudo yum install -y python
sudo yum install -y python-pip
sudo yum install -y ipython 
sudo yum install -y ipython-notebook # pip install jupyter
sudo yum install -y python3-distutils-extra
sudo yum install -y virtualenv #https://stackoverflow.com/questions/4340873/how-do-you-switch-between-python-2-and-3-and-vice-versa
sudo yum install -y git
sudo yum install -y bison
sudo yum install -y flex
sudo yum install -y autoconf-archive
sudo yum install -y autotools-dev
sudo yum install -y automake
sudo yum install -y libleptonica-dev
sudo yum install -y x11vnc
sudo yum install -y libopencv-dev
sudo yum install -y rsync
sudo yum install -y htop
sudo yum install -y sysstat
sudo yum install -y iftop
sudo yum install -y locate
sudo yum install -y lbzip2
sudo yum install -y stress-ng
sudo yum install -y libattr1-dev
sudo yum install -y libkeyutils-dev 
sudo yum install -y libbsd-dev
sudo yum install -y tmux
sudo yum install -y libtool
sudo yum install -y libncursesw5-dev
sudo yum install -y libncurses5-dev
sudo yum install -y libpcap-dev
sudo yum install -y cmake
sudo yum install -y screen
sudo yum install -y libevent-dev
sudo yum install -y minicom
sudo yum install -y ctags
sudo yum install -y fsmark
sudo yum install -y i2c-tools
sudo yum install -y lib32stdc++6
sudo yum install -y libusb-1.0-0-dev
sudo yum install -y zlib1g-dev 
sudo yum install -y libssl-dev 
sudo yum install -y libreadline-dev 
sudo yum install -y lib32z1 
sudo yum install -y g++-10 g++-10-multilib
sudo yum install -y openjdk-8-jdk openjdk-11-jdk openjdk-13-jdk openjdk-16-jdk openjdk-17-jdk
sudo yum install -y golang-go
sudo yum install -y sshfs
sudo yum install -y tftpd-hpa
sudo yum install -y linux-tools-common 
sudo yum install -y linux-tools-generic 
sudo yum install -y linux-tools-`uname -r`
sudo yum install -y metacity
sudo yum install -y findbugs
sudo yum install -y checkstyle
sudo yum install -y device-tree-compiler
sudo yum install -y silversearcher-ag
sudo yum install -y binutils-dev
sudo yum install -y apt-file
sudo yum install -y tree
sudo yum install -y libdbus-1-dev libudev-dev libical-dev
sudo yum install -y elfutils libdw-dev
sudo yum install -y exfat-fuse exfat-utils
sudo yum install -y pinta
sudo yum install -y protobuf-compiler libprotobuf-dev libprotoc-dev
sudo yum install -y qemu-user-static

