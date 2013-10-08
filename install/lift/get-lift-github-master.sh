#!/usr/bin/env bash -

#LIFT='https://github.com/lift/lift_24_sbt/tarball/master'
LIFT='https://github.com/lift/lift_25_sbt/tarball/master'

wget --no-check-certificate $LIFT -O - | tar xvz
