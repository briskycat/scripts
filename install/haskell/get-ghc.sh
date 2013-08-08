#!/usr/bin/env bash

GHC='http://www.haskell.org/ghc/dist/7.4.1/ghc-7.4.1-x86_64-unknown-linux.tar.bz2'
UA='Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3'

#wget -vS --user-agent=$UA $GHC
wget -v --user-agent=$UA $GHC
