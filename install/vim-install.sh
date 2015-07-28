#!/usr/bin/env bash

# install haskell platform to the system user via ubuntu update-alternatives,
# rather than as current user via .profile.  system user in this case = /usr/bin
# tested on Ubuntu 12.04 only

BIN="/usr/bin"
SHARE="/usr/share"
MAN="$SHARE/man"
SHARE_VIM="$SHARE/vim/vim74"
VIM="/opt/vim/7.4"
VIM_BIN="$VIM/bin"
VIM_SHARE="$VIM/share"
VIM_MAN="$VIM_SHARE/man"
VIM_SHARE_VIM="$VIM_SHARE/vim/vim74"
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/vim vim $VIM_BIN/vim $PRIORITY_LEVEL \
--slave $BIN/rvim rvim $VIM_BIN/rvim \
--slave $BIN/vimdiff vimdiff $VIM_BIN/vimdiff \
--slave $BIN/vimtutor vimtutor $VIM_BIN/vimtutor \
--slave $MAN/man10 man.vim $VIM_MAN/man1

update-alternatives --install $BIN/ex ex $VIM_BIN/ex $PRIORITY_LEVEL
update-alternatives --install $BIN/rview rview $VIM_BIN/rview $PRIORITY_LEVEL
update-alternatives --install $BIN/view view $VIM_BIN/view $PRIORITY_LEVEL
update-alternatives --install $BIN/xxd xxd $VIM_BIN/xxd $PRIORITY_LEVEL
