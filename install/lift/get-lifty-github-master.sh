#!/usr/bin/env bash -

LIFTY='https://github.com/Lifty/lifty/tarball/master'

wget --no-check-certificate $LIFTY -O - | tar xvz
