#!/usr/bin/env bash -

# search current directory recursively for case-insenstive term

args="$@"

#grep --color -i -r $args .
#find . -type f -iname '*.html' -print | xargs grep --color -i -r $args .
find . -type f -iname '*' -print | xargs grep --color -i -r $args .

