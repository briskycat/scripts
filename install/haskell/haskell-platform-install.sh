#!/usr/bin/env bash -
# install haskell platform to the system user via ubuntu update-alternatives,
# rather than as current user via .profile.
# tested on Ubuntu 12.04 only

BIN="/usr/bin"
MAN="/usr/share/man"
GHC="/opt/haskell/ghc/7.4.1"
GHC_BIN="$GHC/bin"
GHC_MAN="$GHC/bin"
PLATFORM="/opt/haskell/platform/2012.2.0.0"
PLATFORM_BIN="$PLATFORM/bin"
PLATFORM_MAN="$PLATFORM/man"
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/scala scala $PLATFORM_BIN/scala $PRIORITY_LEVEL \
 --slave $BIN/fsc fsc $PLATFORM_BIN/fsc \
 --slave $BIN/g8 g8 $PLATFORM_BIN/g8 \
 --slave $BIN/giter8.properties giter8.properties $PLATFORM_BIN/giter8.properties \
 --slave $BIN/jansi.jar jansi.jar $PLATFORM_BIN/jansi.jar \
 --slave $BIN/sbt sbt $PLATFORM_BIN/sbt \
 --slave $BIN/sbt-launch.jar sbt-launch.jar $PLATFORM_BIN/sbt-launch.jar \
 --slave $BIN/sbt-launch-lib.bash sbt-launch-lib.bash $PLATFORM_BIN/sbt-launch-lib.bash \
 --slave $BIN/scalac scalac $PLATFORM_BIN/scalac \
 --slave $BIN/scaladoc scaladoc $PLATFORM_BIN/scaladoc \
 --slave $BIN/scalap scalap $PLATFORM_BIN/scalap \
 --slave $MAN/man11 man.scala $PLATFORM_MAN/man1
