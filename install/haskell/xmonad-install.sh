#!/usr/bin/env bash

# build xmonad and xmonad-contrib with cabal, install in /opt/haskell/xmonad, 
# add to Debian Alternatives.

CABAL="/opt/haskell/cabal"
CABAL_VER="1.22.2.0"
CABAL_BIN="$CABAL/$CABAL_VER/bin"
XMONAD_BIN="$CABAL_BIN/xmonad"
PRIORITY_LEVEL=1200

# both commands below require script run under sudo or will fail.
# cabal install xmonad --prefix=$XMONAD_SRC 
# cabal install xmonad-contrib --prefix=$CONTRIB_SRC 

update-alternatives --install $BIN/xmonad xmonad $CONTRIB_BIN/xmonad $PRIORITY_LEVEL
