#! /bin/bash

sudo apt-get -qq update
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y software-properties-common

sudo apt install curl # if you haven't already installed curl

wget -q -O - https://workspaces-client-linux-public-key.s3-us-west-2.amazonaws.com/ADB332E7.asc | sudo apt-key add -
echo "deb [arch=amd64] https://d3nt0h4h6pmmc4.cloudfront.net/ubuntu bionic main" | sudo tee /etc/apt/sources.list.d/amazon-workspaces-clients.list
sudo apt-get update

sudo apt-add-repository universe
sudo apt-add-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install -y sudo
sudo apt-get install -y vim
sudo apt-get install -y emacs
sudo apt-get install -y bash-completion
sudo apt-get install -y command-not-found
sudo apt-get install -y build-essential
sudo apt-get install -y cppcheck clang-tidy
sudo apt-get install -y clang
sudo apt-get install -y gnome-tweaks
sudo apt-get install -y pkg-config
sudo apt-get install -y python
sudo apt-get install -y python-pip
sudo apt-get install -y ipython 
sudo apt-get install -y ipython-notebook # pip install jupyter
sudo apt-get install -y python3-distutils-extra
sudo apt-get install -y virtualenv #https://stackoverflow.com/questions/4340873/how-do-you-switch-between-python-2-and-3-and-vice-versa
sudo apt-get install -y git
sudo apt-get install -y bison
sudo apt-get install -y flex
sudo apt-get install -y libwxgtk3.0-dev
sudo apt-get install -y autoconf-archive
sudo apt-get install -y autotools-dev
sudo apt-get install -y automake
sudo apt-get install -y libleptonica-dev
sudo apt-get install -y x11vnc
sudo apt-get install -y libopencv-dev
sudo apt-get install -y rsync
sudo apt-get install -y htop
sudo apt-get install -y sysstat
sudo apt-get install -y iftop
sudo apt-get install -y locate
sudo apt-get install -y lbzip2
sudo apt-get install -y stress-ng
sudo apt-get install -y libattr1-dev
sudo apt-get install -y libkeyutils-dev 
sudo apt-get install -y libbsd-dev
sudo apt-get install -y tmux
sudo apt-get install -y libtool
sudo apt-get install -y libncursesw5-dev
sudo apt-get install -y libncurses5-dev
sudo apt-get install -y libpcap-dev
sudo apt-get install -y cmake
sudo apt-get install -y screen
sudo apt-get install -y libevent-dev
sudo apt-get install -y minicom
sudo apt-get install -y ctags
sudo apt-get install -y fsmark
sudo apt-get install -y i2c-tools
sudo apt-get install -y qemu-user-static
sudo apt-get install -y lib32stdc++6
sudo apt-get install -y libusb-1.0-0-dev
sudo apt-get install -y zlib1g-dev 
sudo apt-get install -y libssl-dev 
sudo apt-get install -y libreadline-dev 
sudo apt-get install -y lib32z1 
sudo apt-get install -y lib32ncurses5 
sudo apt-get install -y lib32bz2-1.0 
sudo apt-get install -y ia32-libs 
sudo apt-get install -y g++-4.6  g++-4.7 g++-4.8 g++-4.6-multilib g++-4.7-multilib g++-4.8-multilib 
sudo apt-get install -y openjdk-8-jdk openjdk-11-jdk openjdk-13-jdk openjdk-16-jdk openjdk-17-jdk
sudo apt-get install -y golang-go
sudo apt-get install -y sshfs
sudo apt-get install -y tftpd-hpa
sudo apt-get install -y linux-tools-common 
sudo apt-get install -y linux-tools-generic 
sudo apt-get install -y linux-tools-`uname -r`
sudo apt-get install -y vlc
sudo apt-get install -y compiz-plugins
sudo apt-get install -y metacity
sudo apt-get install -y amazon-windows-pdx-us-en
sudo apt-get install -y brazilcli
sudo apt-get install -y findbugs
sudo apt-get install -y checkstyle
sudo apt-get install -y device-tree-compiler
sudo apt-get install -y nautilus-open-terminal
sudo apt-get install -y silversearcher-ag
sudo apt-get install -y binutils-dev
sudo apt-get install -y apt-file
sudo apt-get install -y tree
sudo apt-get install -y libdbus-1-dev libudev-dev libical-dev
sudo apt-get install -y elfutils libdw-dev
sudo apt-get install -y exfat-fuse exfat-utils
sudo apt-get install -y pinta
sudo apt-get install -y protobuf-compiler libprotobuf-dev libprotoc-dev
sudo apt-get install -y workspacesclient
sudo apt-get install -y qemu-user-static

#sudo  apt-get install -y docker.io
#sudo  addgroup ubuntu docker
