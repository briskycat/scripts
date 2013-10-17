#!/usr/bin/env bash

# usage:
# sh lessc-yui src.less dest.css

EXPECTED_ARGS=2
E_BADARGS=65

if [ $# -ne $EXPECTED_ARGS ]
then
  echo "Usage: asename $0{arg}"
  exit $E_BADARGS
fi

lessc $1 $2 --yui-compress
