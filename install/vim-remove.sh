#!/usr/bin/env bash

VIM="/opt/vim"
VIM_VER="7.4/nox"
VIM_BIN="$VIM/$VIM_VER/bin"

update-alternatives --remove vim $VIM_BIN/vim
update-alternatives --remove ex $VIM_BIN/ex
update-alternatives --remove rview $VIM_BIN/rview
update-alternatives --remove view $VIM_BIN/view
update-alternatives --remove xxd $VIM_BIN/xxd
