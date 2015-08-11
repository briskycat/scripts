#!/usr/bin/env bash

# use this instead of update-alternatives to manage rust version
# copy into /opt/rust alongside 1.2, 1.3, etc
# pass rust version directory as parameter 

rm default
ln -s $1 default
