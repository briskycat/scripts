#!/usr/bin/env bash

args=$@

#wget --load-cookies=./oracle-cookies.txt --user-agent="Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" $args

#http://blog.kdecherf.com/2012/04/12/oracle-i-download-your-jdk-by-eating-magic-cookies/
wget --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjdk-7u6-download-1501626.html;" $args
