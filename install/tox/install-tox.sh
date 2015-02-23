#!/usr/bin/env bash

#base dependencies
sudo apt-get install build-essential libtool autotools-dev automake checkinstall check git yasm

#for A/V support
sudo add-apt-repository ppa:ubuntu-sdk-team/ppa && sudo apt-get update && sudo apt-get dist-upgrade
sudo apt-get install libopus-dev libvpx-dev pkg-config

#for Ncurses support
sudo apt-get install ncurses-dev

#for bootstrap Daemon support
sudo apt-get install libconfig-dev

#install libsodium
git clone git://github.com/jedisct1/libsodium.git
cd libsodium
git checkout tags/1.0.0
./autogen.sh
./configure --prefix=/opt/libsodium && make check
sudo checkinstall --install --pkgname libsodium --pkgversion 1.0.0 --nodoc
sudo ldconfig
cd ..

#update alternatives config
#...

#install tox
git clone git://github.com/irungentoo/toxcore.git
cd toxcore
autoreconf -i
./configure --prefix=/opt/tox --enable-ntox --enable-daemon
make
sudo make install

#update alternatives config
#...

