#!/usr/bin/env bash

# https://github.com/mishoo/UglifyJS2

# usage: 
# writes to stout by default, must pipe output to file:
# sh uglifyjs.sh src.js >> dest.js

EXPECTED_ARGS=1
E_BADARGS=65

if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: asename $0{arg}"
  exit $E_BADARGS
fi

uglifyjs $@

