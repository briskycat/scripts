#!/usr/bin/env bash -

# install node.js to the system user via ubuntu update-alternatives,
# rather than as current user via .profile.  system user in this case = /usr/bin
# tested on Ubuntu 12.04 only

BIN="/usr/bin"
MAN="/usr/share/man"
NODE="/opt/nodejs/0.10.26"
NODE_BIN="$NODE/bin"
NODE_MAN="$NODE/share/man"
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/node nodejs $NODE_BIN/node $PRIORITY_LEVEL \
 --slave $BIN/npm npm $NODE_BIN/npm \
 --slave $BIN/nperf nperf $NODE_BIN/nperf \
 --slave $BIN/idonethis idonethis $NODE_BIN/idonethis \
 --slave $BIN/keybase keybase $NODE_BIN/keybase \
 --slave $MAN/man10 man.nodejs $NODE_MAN/man1
