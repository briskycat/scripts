#!/usr/bin/env bash

# this install method simply soft links the entire go root folder to /usr/local/go 
# and assumes the env variable $GOPATH points to /usr/local/go/bin so you do not have
# specify the locations of every binary as is SOP with update-alternatives.

ROOT="/usr/local/go"
GO_SRC="/opt/go"
GO_VER="1.4.2"
GO_ROOT="$GO_SRC/$GO_VER"
PRIORITY_LEVEL=1200

update-alternatives --install $ROOT golang-go $GO_ROOT $PRIORITY_LEVEL \
