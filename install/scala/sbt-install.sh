#!/usr/bin/env bash -
# tested on Ubuntu 12.04 only

SBT_TAR="/usr/bin"
SBT_SRC_LOC="/opt/scala/sbt/"
SBT_SRC_VER="0.13.5"
SBT_SRC="$SBT_SRC_LOC/$SBT_SRC_VER/bin"
#MAN_SRC="$SBT_SRC_LOC/$SBT_SRC_VER/man/man1"
#MAN_TAR="/usr/share/man/man12"
PRIORITY_LEVEL=1100

# install Typesafe Stack alternative for update-alternatives --config scala
update-alternatives --install $SBT_TAR/sbt sbt $SBT_SRC/sbt $PRIORITY_LEVEL \
 --slave $SBT_TAR/sbt-launch.jar sbt-launch.jar $SBT_SRC/sbt-launch.jar \
 --slave $SBT_TAR/sbt-launch-lib.bash sbt-launch-lib.bash $SBT_SRC/sbt-launch-lib.bash \
# --slave $SBT_TAR/scaladoc scaladoc $SBT_SRC/scaladoc \
# --slave $SBT_TAR/scalap scalap $SBT_SRC/scalap \
# --slave $MAN_TAR man.scala $MAN_SRC

