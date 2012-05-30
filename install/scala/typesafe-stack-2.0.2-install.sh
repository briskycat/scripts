#!/usr/bin/env bash -
# tested on Ubuntu 12.04 only

BIN="/usr/bin"
MAN="/usr/share/man"
STACK="/opt/scala/typesafe/stack/2.0.2"
STACK_BIN="$STACK/bin"
STACK_MAN="$STACK/man"
PRIORITY_LEVEL=1200

# install Typesafe Stack alternative for update-alternatives --config scala

echo """
update-alternatives --install $BIN/scala scala $STACK_BIN/scala $PRIORITY_LEVEL \ 
--slave $BIN/classes classes $STACK_BIN/classes \ 
--slave $BIN/fsc fsc $STACK_BIN/fsc \ 
--slave $BIN/g8 g8 $STACK_BIN/g8 \ 
--slave $BIN/giter8.properties giter8.properties $STACK_BIN/giter8.properties \ 
--slave $BIN/jansi.jar jansi.jar $STACK_BIN/jansi.jar \ 
--slave $BIN/sbt sbt $STACK_BIN/sbt \ 
--slave $BIN/sbt-launch.jar sbt-launch.jar $STACK_BIN/sbt-launch.jar \ 
--slave $BIN/sbt-launch-lib.bash sbt-launch-lib.bash $STACK_BIN/sbt-launch-lib.bash \ 
--slave $BIN/scalac scalac $STACK_BIN/scalac \ 
--slave $BIN/scaladoc scaladoc $STACK_BIN/scaladoc \ 
--slave $BIN/scalap scalap $STACK_BIN/scalap \ 
--slave $MAN/man11 man.scala $STACK_MAN/man1
"""
