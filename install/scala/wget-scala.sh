#!/usr/bin/env bash -

SRC="http://www.scala-lang.org/downloads/distrib/files"
VER="scala-2.9.2.tgz"
SCALA="$SRC/$VER"
CHECKSUM="$SRC/$VER.md5"

wget --no-check-certificate $SCALA
wget --no-check-certificate $CHECKSUM
md5sum -c $VER.md5
