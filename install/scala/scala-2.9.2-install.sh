#!/usr/bin/env bash -
# tested on Ubuntu 12.04 only

BIN="/usr/bin"
MAN="/usr/share/man"
SCALA="/opt/scala/bin/2.9.2/"
SCALA_BIN="$SCALA/bin"
SCALA_MAN="$SCALA/man"
PRIORITY_LEVEL=1200

# install Typesafe Stack alternative for update-alternatives --config scala

update-alternatives --install $BIN/scala scala $SCALA_BIN/scala $PRIORITY_LEVEL \
 --slave $BIN/fsc fsc $SCALA_BIN/fsc \
 --slave $BIN/g8 g8 $SCALA_BIN/g8 \
 --slave $BIN/giter8.properties giter8.properties $SCALA_BIN/giter8.properties \
 --slave $BIN/jansi.jar jansi.jar $SCALA_BIN/jansi.jar \
 --slave $BIN/sbt sbt $SCALA_BIN/sbt \
 --slave $BIN/sbt-launch.jar sbt-launch.jar $SCALA_BIN/sbt-launch.jar \
 --slave $BIN/sbt-launch-lib.bash sbt-launch-lib.bash $SCALA_BIN/sbt-launch-lib.bash \
 --slave $BIN/scalac scalac $SCALA_BIN/scalac \
 --slave $BIN/scaladoc scaladoc $SCALA_BIN/scaladoc \
 --slave $BIN/scalap scalap $SCALA_BIN/scalap \
 --slave $MAN/man11 man.scala $SCALA_MAN/man1


scala
fsc
scalac
scaladoc
scalap
