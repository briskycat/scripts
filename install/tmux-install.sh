#!/usr/bin/env bash

BIN="/usr/bin"
MAN="/usr/share/man"
TMUX="/opt/tmux/2.0"
TMUX_BIN="$TMUX/bin"
TMUX_MAN="$TMUX/share/man"
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/tmux tmux $TMUX_BIN/tmux $PRIORITY_LEVEL \
 --slave $MAN/man16 man.tmux $TMUX_MAN/man1
