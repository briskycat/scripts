#!/usr/bin/env bash

# http://askubuntu.com/questions/135602/i-have-permanent-connections-to-canonical-servers-what-are-they-for-and-how-can
# http://stackoverflow.com/questions/14168351/cant-listen-on-port-80-with-my-server
# use sudo to show all processes

netstat -lnp
#netstat -tp
#netstat -atulpen
#netstat -an | grep :80
#netstat -tulpn | grep :80

