#!/usr/bin/env bash -

BIN="/usr/bin"
MAN="/usr/share/man"
MVN="/opt/apache/maven/3.0.3"
MVN_BIN="$MVN/bin"
#MVN_MAN="$MVN/man"  (no man pages)
PRIORITY_LEVEL=1200

sudo update-alternatives --install $BIN/mvn mvn $MVN_BIN/mvn $PRIORITY_LEVEL \
 --slave $BIN/mvnDebug mvnDebug $MVN_BIN/mvnDebug \
 --slave $BIN/mvnyjp mvnyjp $MVN_BIN/mvnyjp \
 --slave $BIN/m2.conf m2.conf $MVN_BIN/m2.conf
