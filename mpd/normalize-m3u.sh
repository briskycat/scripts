#!/usr/bin/env bash

# This script reformats Banshee playlists for mpd.  All that must be done is to replace
# the relative path to the music library with the full path from /.
# http://ubuntuforums.org/showthread.php?t=1938373&p=11783915
# https://wiki.archlinux.org/index.php/Music_Player_Daemon 
# http://ubuntuforums.org/showthread.php?t=5194&highlight=mpdconf

# Usage:   sh normalize-m3u.sh playlistname.m3u

EXPECTED_ARGS=1
E_BADARGS=65

if [ $EXPECTED_ARGS -ne $# ]; then
    echo "Usage: `basename $0` {arg}"
    exit $E_BADARGS
else
    #find /home/kurtosis/Music-type f -print0 | xargs -0 sed -i "s/\.\./\~\/Music/g"
    #find . -type f -print0 | xargs -0 sed -i 's/\.\.\/\.\.\/Library/\/home\/kurtosis\/Music\/Library/g'
    #echo "find . -type f -print0 | xargs -0 sed -i 's/\.\.\/\.\.\/Library/\/home\/kurtosis\/Music\/Library/g'"
    echo "executing...  sed -i.bak 's/..\/Library/\/home\/kurtosis\/Music\/Library/g' $1"
    sed -i.bak 's/..\/Library/\/home\/kurtosis\/Music\/Library/g' $1
    #echo "executing...  sed -i.bak 's/\/home\/kurtosis\/Mus\/home\//\/home\//g' $1"
    #sed -i.bak 's/\/home\/kurtosis\/Mus\/home\//\/home\//g' $1
fi
