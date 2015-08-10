#!/usr/bin/env bash

# install haskell platform to the system user via ubuntu update-alternatives,
# rather than as current user via .profile.  system user in this case = /usr/bin
# tested on Ubuntu 12.04 only

BIN="/usr/bin"
LIB="/usr/lib"
MAN="/usr/share/man"
GHC="/opt/haskell/ghc/"
GHC_VER="7.10.1"
GHC_BIN="$GHC/$GHC_VER/bin"

update-alternatives --remove ghc $GHC_BIN/ghc
