#!/usr/bin/env bash -
# tested on Ubuntu 12.04 only

STACK_TAR="/usr/bin"
STACK_SRC_LOC="/opt/scala/typesafe/stack"
STACK_SRC_VER="2.0.2"
STACK_SRC="$STACK_SRC_LOC/$STACK_SRC_VER/bin"
MAN_SRC="$STACK_SRC_LOC/$STACK_SRC_VER/man"
MAN_TAR="/usr/share/man/man11"
PRIORITY_LEVEL=1200

# install Typesafe Stack alternative for update-alternatives --config scala

update-alternatives --install $STACK_TAR/scala scala $STACK_SRC/scala $PRIORITY_LEVEL \
 --slave $STACK_TAR/fsc fsc $STACK_SRC/fsc \
 --slave $STACK_TAR/g8 g8 $STACK_SRC/g8 \
 --slave $STACK_TAR/giter8.properties giter8.properties $STACK_SRC/giter8.properties \
 --slave $STACK_TAR/jansi.jar jansi.jar $STACK_SRC/jansi.jar \
 --slave $STACK_TAR/sbt sbt $STACK_SRC/sbt \
 --slave $STACK_TAR/sbt-launch.jar sbt-launch.jar $STACK_SRC/sbt-launch.jar \
 --slave $STACK_TAR/sbt-launch-lib.bash sbt-launch-lib.bash $STACK_SRC/sbt-launch-lib.bash \
 --slave $STACK_TAR/scalac scalac $STACK_SRC/scalac \
 --slave $STACK_TAR/scaladoc scaladoc $STACK_SRC/scaladoc \
 --slave $STACK_TAR/scalap scalap $STACK_SRC/scalap \
 --slave $MAN_TAR man.scala $MAN_SRC
