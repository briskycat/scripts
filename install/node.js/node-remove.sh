#!/usr/bin/env bash

# remove node.js from the system user via ubuntu update-alternatives,
# rather than as current user via .profile.  system user in this case = /usr/bin
# tested on Ubuntu 12.04 only

BIN="/usr/bin"
MAN="/usr/share/man"
NODE="/opt/nodejs/0.10.26"
NODE_BIN="$NODE/bin"
NODE_MAN="$NODE/share/man"
PRIORITY_LEVEL=1200

update-alternatives --remove nodejs $NODE_BIN/node 
