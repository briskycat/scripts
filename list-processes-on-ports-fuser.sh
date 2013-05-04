#!/usr/bin/env bash

# http://www.cyberciti.biz/faq/what-process-has-open-linux-port/
# show all process bound to ports
# use sudo to show all processes

fuser 80/tcp

#then to show info on the pid's returned by fuser:

# ls -l /proc/3813/exe

# whre 3813 is the pid returned by fuser command
