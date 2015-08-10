#!/usr/bin/env bash -

# install haskell platform to the system user via ubuntu update-alternatives,
# rather than as current user via .profile.  system user in this case = /usr/bin
# tested on Ubuntu 12.04 only

BIN="/usr/bin"
MAN="/usr/share/man"
PLATFORM="/opt/haskell/platform"
PLATFORM_VER="2013.2.0.0"
PLATFORM_BIN="$PLATFORM/$PLATFORM_VER/bin"
#PLATFORM_MAN="$PLATFORM/share/doc/man" #no man files with platform
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/cabal cabal $PLATFORM_BIN/cabal $PRIORITY_LEVEL \
 --slave $BIN/alex alex $PLATFORM_BIN/alex \
 --slave $BIN/happy happy $PLATFORM_BIN/happy


# --slave $BIN/basic-tests basic-tests $PLATFORM_BIN/basic-tests \
# --slave $BIN/extended-tests extended-tests $PLATFORM_BIN/extended-tests \
# --slave $BIN/optimize-1-tests optimize-1-tests $PLATFORM_BIN/optimize-1-tests \
# --slave $BIN/terminal-tests terminal-tests $PLATFORM_BIN/terminal-tests
