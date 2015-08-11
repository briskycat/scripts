#!/usr/bin/env bash

# install packer to the system user via ubuntu update-alternatives,

BIN="/usr/bin"
PKR="/opt/packer"
PKR_VER="0.8.2"
PKR_BIN="$PKR/$PKR_VER"
PRIORITY_LEVEL=1200

update-alternatives --remove packer $PKR_BIN/packer
