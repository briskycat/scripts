#!/usr/bin/env bash -

BIN="/usr/bin"
MAN="/usr/share/man"
ANT="/opt/apache/ant/1.8.4"
ANT_BIN="$ANT/bin"
#ANT_MAN="$ANT/man"  (no man pages)
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/ant ant $ANT_BIN/ant $PRIORITY_LEVEL \
 --slave $BIN/antRun antRun $ANT_BIN/antRun


