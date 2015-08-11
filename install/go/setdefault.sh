#!/usr/bin/env bash

# use this instead of update-alternatives to manage go version
# copy into /opt/go alongside 1.4.2, 1.5rc1, etc
# pass go version directory as parameter 

rm default
ln -s $1 default
