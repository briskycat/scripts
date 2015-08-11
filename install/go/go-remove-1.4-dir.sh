#!/usr/bin/env bash

GO="/opt/go"
VER="1.4.2"

update-alternatives --remove golang-go $GO/$VER/bin/go
