#!/usr/bin/env bash

# install node.js to the system user via ubuntu update-alternatives, rather than as current user via .profile.
# System user in this case = /usr/bin tested on Ubuntu 12.04 only

NODE="/opt/nodejs"
NODE_VER="0.12.7"
NODE_BIN="$NODE/$NODE_VER/bin"

update-alternatives --remove nodejs $NODE_BIN/node
