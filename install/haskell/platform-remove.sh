#!/usr/bin/env bash -

# install haskell platform to the system user via ubuntu update-alternatives,
# rather than as current user via .profile.  system user in this case = /usr/bin
# tested on Ubuntu 12.04 only

BIN="/usr/bin"
MAN="/usr/share/man"
PLATFORM="/opt/haskell/platform"
PLATFORM_VER="2013.2.0.0"
PLATFORM_BIN="$PLATFORM/$PLATFORM_VER/bin"

update-alternatives --remove cabal $PLATFORM_BIN/cabal
