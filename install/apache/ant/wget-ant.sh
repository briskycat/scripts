#!/usr/bin/env bash -

VERSION='1.8.4'
MAIN='http://www.apache.org/dist/ant/binaries'
MIRROR='http://apache.cs.utah.edu/ant/binaries'
#MIRROR='http://www.apache.org/dist/ant/binaries'

#wget --no-check-certificate $MAIN/apache-ant-$VERSION-bin.tar.gz.asc 
#wget --no-check-certificate $MAIN/apache-ant-$VERSION-bin.tar.gz.sha1 
#wget --no-check-certificate $MAIN/apache-ant-$VERSION-bin.tar.gz.sha512 
#wget --no-check-certificate $MAIN/apache-ant-$VERSION-bin.tar.gz.md5
wget --no-check-certificate $MIRROR/apache-ant-$VERSION-bin.tar.gz
#wget --no-check-certificate $MIRROR/apache-ant-$VERSION-bin.tar.gz -O - | tar xvz

