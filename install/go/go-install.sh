#!/usr/bin/env bash

BIN="/usr/local"
GO="/opt/go"
VER="1.4.2"
PRIORITY_LEVEL=1200

#update-alternatives --install $BIN/go/bin/go go $GO/$VER/bin/go $PRIORITY_LEVEL 
update-alternatives --verbose --install /usr/local/go/bin/go go /opt/go/1.4.2/bin/go 1200
