#!/usr/bin/env bash

# install haskell platform to the system user via ubuntu update-alternatives,
# rather than as current user via .profile.  system user in this case = /usr/bin
# tested on Ubuntu 12.04 only

BIN="/usr/bin"
SHARE="/usr/share"
MAN="/usr/man/"
DOC="$SHARE/vim/vim74/doc"
VIM="/opt/vim/7.4"
VIM_BIN="$VIM/bin"
VIM_SHARE="$VIM/share"
VIM_MAN="$VIM_SHARE/man"
VIM_SHARE_VIM="$VIM_SHARE/vim/vim74"
PRIORITY_LEVEL=1200

update-alternatives --install $BIN/vim vim $VIM_BIN/vim $PRIORITY_LEVEL \
 --slave $BIN/ex ex $VIM_BIN/ex \
 --slave $BIN/rview rview $VIM_BIN/rview \
 --slave $BIN/rvim rvim $VIM_BIN/rvim \
 --slave $BIN/view view $VIM_BIN/view \
 --slave $BIN/vimtutor vimtutor $VIM_BIN/vimtutor \
 --slave $BIN/xxd xxd $VIM_BIN/xxd \
 --slave $DOC/doc/vim2html.pl vim2html.pl $VIM_DOC/vim2html.pl \
 --slave $DOC/macros/less.sh less.sh $VIM_SHARE_VIM/macros/less.sh \
 --slave $MAN/man10 man.vim $VIM_MAN/man1
