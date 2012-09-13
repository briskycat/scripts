#!/usr/bin/env bash

# Installation instructions:
# https://github.com/karma4u101/FoBo

git clone git://github.com/karma4u101/FoBo.git
cd FoBo

#./sbt-publish-local
# or 
#./sbt clean update compile package publish-local
# or override default lift version (currently 2.4) like this
#./sbt "set liftVersion:=\"2.5-SNAPSHOT\"" clean update less compile package publish-local

# less not working yet
./sbt "set liftVersion:=\"2.5-SNAPSHOT\"" clean update compile package publish-local
