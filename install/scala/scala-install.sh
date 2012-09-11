#!/usr/bin/env bash -
# tested on Ubuntu 12.04 only

BIN="/usr/bin"
MAN="/usr/share/man"
SCALA="/opt/scala/bin/2.9.2"
SCALA_BIN="$SCALA/bin"
SCALA_MAN="$SCALA/man"
PRIORITY_LEVEL=1100

# install Typesafe Stack alternative for update-alternatives --config scala

update-alternatives --install $BIN/scala scala $SCALA_BIN/scala $PRIORITY_LEVEL \
 --slave $BIN/fsc fsc $SCALA_BIN/fsc \
 --slave $BIN/scalac scalac $SCALA_BIN/scalac \
 --slave $BIN/scaladoc scaladoc $SCALA_BIN/scaladoc \
 --slave $BIN/scalap scalap $SCALA_BIN/scalap \
 --slave $MAN/man11 man.scala $SCALA_MAN/man1

