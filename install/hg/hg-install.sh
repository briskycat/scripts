#!/usr/bin/env bash

BIN="/usr/bin"
MAN="/usr/share/man"
HG="/opt/hg"
HG_VER="3.5"
HG_BIN="$HG/$HG_VER/bin"
HG_MAN="$HG/$HG_VER/share/man"
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/hg hg $HG_BIN/hg $PRIORITY_LEVEL \
 --slave $MAN/man17 man.hg1 $HG_MAN/man1 \
 --slave $MAN/man18 man.hg5 $HG_MAN/man5
