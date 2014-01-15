#!/usr/bin/env bash -

# http://www.rust-lang.org/
# http://github.com/mozilla/rust
#
# Compile and install Rust without package manager via ubuntu update-alternatives
# Manage multiple versions, compile and install to /opt/rust/[version], then swap
# between active version with a single command "update-alternaties --config".
#
# Steps:
#
# 1.  Download Rust, either curl/wget the tarball or clone the git repo
# 2.  unpack, cd to src dir
# 3.  ./configure --prefix=/opt/rust/[version]
# 4.  sudo make && make install
# 5.  run this script to add to update-alternatives ("man update-alternatives" 
#     for details) 
# 6.  for future versions of Rust, repeat these steps but change the version in 
#     ./config prefix and the VER value in this file.  You can install multiple
#     versions simultaneously and use update-alternatives to toggle between active
#     versions.

HOME="/opt/rust"
VER="0.9"
BIN="/usr/bin"
LIB="/usr/lib"
MAN="/usr/share/man/man12"
SRC_BIN="$HOME/$VER/bin"
SRC_LIB="$HOME/$VER/lib"
SRC_MAN="$HOME/$VER/share/man/man1"
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/rustc rust $SRC_BIN/rustc $PRIORITY_LEVEL \
 --slave $BIN/rustdoc rustdoc $SRC_BIN/rustdoc \
 --slave $BIN/rustpkg rustpkg $SRC_BIN/rustpkg \
 --slave $LIB/rustlib rustlib $SRC_LIB/rustlib \
 --slave $LIB/librustc-8b28e8d8-0.9.so librustc-8b28e8d8-0.9.so $SRC_LIB/librustc-8b28e8d8-0.9.so \
 --slave $LIB/librustpkg-7b329bae-0.9.so librustpkg-7b329bae-0.9.so $SRC_LIB/librustpkg-7b329bae-0.9.so \
 --slave $LIB/librustdoc-f0f95988-0.9.so librustdoc-f0f95988-0.9.so $SRC_LIB/librustdoc-f0f95988-0.9.so \
 --slave $LIB/libextra-fd30a1b1-0.9.so libextra-fd30a1b1-0.9.so $SRC_LIB/libextra-fd30a1b1-0.9.so \
 --slave $LIB/libstd-3e5aeb83-0.9.so libstd-3e5aeb83-0.9.so $SRC_LIB/libstd-3e5aeb83-0.9.so \
 --slave $LIB/libgreen-83b1c0e5-0.9.so libgreen-83b1c0e5-0.9.so $SRC_LIB/libgreen-83b1c0e5-0.9.so \
 --slave $LIB/librustuv-2ba3695a-0.9.so librustuv-2ba3695a-0.9.so $SRC_LIB/librustuv-2ba3695a-0.9.so \
 --slave $LIB/libsyntax-9be99726-0.9.so libsyntax-9be99726-0.9.so $SRC_LIB/libsyntax-9be99726-0.9.so \
 --slave $MAN man.rust $SRC_MAN

