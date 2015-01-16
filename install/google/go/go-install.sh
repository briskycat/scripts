#!/usr/bin/env bash -

# install haskell platform to the system user via ubuntu update-alternatives,
# rather than as current user via .profile.  system user in this case = /usr/bin
# tested on Ubuntu 12.04 only

BIN="/usr/local"
GO="/opt/go"
VER="1.2.2"
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/go/bin/go go $GO/$VER/bin/go $PRIORITY_LEVEL \
  --slave $BIN/go/bin/godoc godoc $GO/$VER/bin/godoc \
  --slave $BIN/go/bin/gofmt gofmt $GO/$VER/bin/gofmt \
  --slave $BIN/go/bin/gofmt gofmt $GO/$VER/bin/gofmt \
  --slave $BIN/go/lib/time/update.bash update.bash $GO/$VER/lib/time/update.bash \
  --slave $BIN/go/misc x $GO/$VER/bin/misc \
  --slave $BIN/go/misc x $GO/$VER/bin/misc \
  --slave $BIN/go/misc x $GO/$VER/bin/misc \
  --slave $BIN/go/misc x $GO/$VER/bin/misc \
  --slave $BIN/go/misc x $GO/$VER/bin/misc \

