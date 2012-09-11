#!/usr/bin/env bash -
# tested on Ubuntu 12.04 only

SCALA_TAR="/usr/bin"
SCALA_SRC_LOC="/opt/scala/bin"
SCALA_SRC_VER="2.9.2"
SCALA_SRC="$SCALA_SRC_LOC/$SCALA_SRC_VER/bin"
MAN_SRC="$SCALA_SRC_LOC/$SCALA_SRC_VER/man/man1"
MAN_TAR="/usr/share/man/man11"
PRIORITY_LEVEL=1100

# install Typesafe Stack alternative for update-alternatives --config scala
update-alternatives --install $SCALA_TAR/scala scala $SCALA_SRC/scala $PRIORITY_LEVEL \
 --slave $SCALA_TAR/fsc fsc $SCALA_SRC/fsc \
 --slave $SCALA_TAR/scalac scalac $SCALA_SRC/scalac \
 --slave $SCALA_TAR/scaladoc scaladoc $SCALA_SRC/scaladoc \
 --slave $SCALA_TAR/scalap scalap $SCALA_SRC/scalap \
 --slave $MAN_TAR man.scala $MAN_SRC

