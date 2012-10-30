#!/usr/bin/env bash

HP='http://lambda.haskell.org/platform/download/2012.2.0.0/haskell-platform-2012.2.0.0.tar.gz'
UA='Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3'

#wget -vS --user-agent=$UA $HP
wget -v --user-agent=$UA $HP
