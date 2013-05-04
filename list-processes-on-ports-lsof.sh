#!/usr/bin/env bash

# http://stackoverflow.com/questions/14168351/cant-listen-on-port-80-with-my-server
# http://danielmiessler.com/study/lsof/

# show all process bound to ports
# use sudo to show all processes

lsof -n -P -i +c 15
#lsof -i :80
