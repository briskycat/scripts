#!/usr/bin/env bash

TMUX="/opt/tmux"
TMUX_VER="2.0"
TMUX_BIN="$TMUX/$TMUX_VER/bin"

update-alternatives --remove tmux $TMUX_BIN/tmux
