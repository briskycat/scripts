#!/usr/bin/env bash -

VERSION='3.0.4'
MAIN='http://www.apache.org/dyn/closer.cgi/maven/binaries'
MAIN_BIN='http://www.apache.org/dyn/closer.cgi/maven/binaries'
MIRROR='http://www.apache.org/dyn/closer.cgi/maven/binaries'

wget --no-check-certificate $MAIN/apache-maven-$VERSION-bin.tar.gz.md5
wget --no-check-certificate $MAIN/apache-maven-$VERSION-bin.tar.gz.asc
wget --no-check-certificate $MAIN_BIN/apache-maven-$VERSION-bin.tar.gz
#wget --no-check-certificate $MAIN_BIN/apache-maven-$VERSION-bin.tar.gz -O - | tar xvz
