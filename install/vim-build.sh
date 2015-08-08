#!/usr/bin/env bash

# build vim with no GUI but with X support and all other options
# see available options with ./configure --help
# see more detailed options in src/Makefile

# instructions
# 1.  clone vim
# 2.  copy this file into [src]/vim/src
# 3.  optionally, edit Makefile options
# 4.  run this file

./configure --prefix=/opt/vim/7.4/nox \
  --disable-darwin \
  --disable-gtktest \
  --enable-gui=no \
  --with-x \
  --enable-luainterp=yes \
  --enable-mzschemeinterp \
  --enable-perlinterp=yes \
  --enable-pythoninterp=yes \
  --enable-python3interp=yes \
  --enable-tclinterp \
  --enable-rubyinterp=yes \
  --enable-cscope \
  --enable-multibyte \
  --enable-xim \
  --enable-fontset
