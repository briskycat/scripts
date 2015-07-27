#!/usr/bin/env bash

# install haskell platform to the system user via ubuntu update-alternatives,
# rather than as current user via .profile.  system user in this case = /usr/bin
# tested on Ubuntu 12.04 only

BIN="/usr/bin"
MAN="/usr/share/man"
CABAL="/opt/haskell/cabal/1.22.2.0"
CABAL_BIN="$CABAL/bin"
CABAL_LIB="$CABAL/lib"
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/cabal cabal $CABAL_BIN/cabal $PRIORITY_LEVEL
