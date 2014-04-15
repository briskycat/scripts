#!/usr/bin/env bash

# build xmonad and xmonad-contrib with cabal, install in /opt/haskell/xmonad, 
# add to Debian Alternatives.

BIN="/usr/local/bin"
LIB="/usr/local/lib"
SHARE="/usr/local/share"
MAN="/usr/share/man"
XMONAD_VER="0.11"
XMONAD="xmonad-$XMONAD_VER"
CONTRIB_VER="0.11.2"
CONTRIB="xmonad-contrib-$CONTRIB_VER"
SRC="/opt/haskell/"
XMONAD_SRC="$SRC/xmonad/$XMONAD_VER"
CONTRIB_SRC="$SRC/xmonad-contrib/$CONTRIB_VER"
XMONAD_LIB="$CONTRIB_LIB/lib/$XMONAD"
CONTRIB_LIB="$CONTRIB_LIB/lib/$CONTRIB"
CONTRIB_BIN="$CONTRIB_SRC/bin"
CONTRIB_SHARE="$CONTRIB_SRC/share"
CONTRIB_MAN="$CONTRIB_SRC/share/$XMONAD/man"
PRIORITY_LEVEL=1200

# both commands below require script run under sudo or will fail.

# cabal install xmonad --prefix=$XMONAD_SRC
# cabal install xmonad-contrib --prefix=$CONTRIB_SRC

update-alternatives --install $BIN/xmonad xmonad $CONTRIB_BIN/xmonad $PRIORITY_LEVEL \
  --slave $LIB/$XMONAD xmonad.lib $XMONAD_LIB \
  --slave $LIB/$CONTRIB xmonad.contrib.lib $CONTRIB_LIB \
  --slave $SHARE/$XMONAD xmonad.share $CONTRIB_SHARE/$XMONAD \
  --slave $MAN/xmonad.1 xmonad.man $CONTRIB_MAN/xmonad.1

