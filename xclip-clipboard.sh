#!/usr/bin/env bash

cat @1 | xclip -selection c

# put a file in the clipboard
#xclip -in -selection c <filename>

# put the clipboard in a file
#xclip -out -selection c <filename>
