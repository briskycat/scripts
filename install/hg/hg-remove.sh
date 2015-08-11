#!/usr/bin/env bash

HG="/opt/hg"
HG_VER="3.5"
HG_BIN="$HG/$HG_VER/bin"

update-alternatives --remove hg $HG_BIN/hg
