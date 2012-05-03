#!/usr/bin/env bash

# This script reformats Banshee playlists for mpd.  All that must be done is to replace
# the relative path to the music library with the full path from /.

find /home/kurtosis/Music-type f -print0 | xargs -0 sed -i "s/\.\./\~\/Music/g"
