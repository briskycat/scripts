#!/usr/bin/env bash

BIN="/usr/local"
GO="/opt/go"
VER="1.4.2"

update-alternatives --remove go $GO/$VER/bin/go
