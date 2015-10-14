#!/usr/bin/env bash

# install node.js to the system user via ubuntu update-alternatives, rather than as current user via .profile.
# System user in this case = /usr/bin tested on Ubuntu 12.04 only

BIN="/usr/bin"
MAN="/usr/share/man"
NODE="/opt/node.js"
NODE_VER="4.2.0"
NODE_BIN="$NODE/$NODE_VER/bin"
NODE_MAN="$NODE/$NODE_VER/share/man"
NPM="$NODE/$NODE_VER/lib/node_modules/npm"
NPM_BIN="$NODE_BIN"
NPM_MAN="$NPM/man"
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/node node $NODE_BIN/node $PRIORITY_LEVEL \
 --slave $BIN/npm npm $NODE_BIN/npm \
 --slave $BIN/keybase-installer keybase-installer $NODE_BIN/keybase-installer \
 --slave $BIN/keybase keybase $NODE_BIN/keybase \
 --slave $MAN/man11 nodejs.man $NODE_MAN/man1 \
 --slave $MAN/man12 npm.man1 $NPM_MAN/man1 \
 --slave $MAN/man13 npm.man3 $NPM_MAN/man3 \
 --slave $MAN/man14 npm.man5 $NPM_MAN/man5 \
 --slave $MAN/man15 npm.man7 $NPM_MAN/man7
