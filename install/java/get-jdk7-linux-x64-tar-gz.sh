#!/usr/bin/env bash

#http://blog.kdecherf.com/2012/04/12/oracle-i-download-your-jdk-by-eating-magic-cookies/

JDK='http://download.oracle.com/otn-pub/java/jdk/7u7-b10/jdk-7u7-linux-x64.tar.gz'

wget --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjdk-7u6-download-1501626.html;" $JDK

