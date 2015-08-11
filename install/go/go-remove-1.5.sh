#!/usr/bin/env bash

GO="/opt/go"
VER="1.5rc1"

update-alternatives --remove golang-go $GO/$VER/bin/go
