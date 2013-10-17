#!/usr/bin/env bash

# replace all occurences of $1 text string with $2.  Recursive through all subdirectories.  
# Must escape special/regex characters in args.  Example:

# sh find-replace-text-recursive-sed.sh bootstrap\/dist\/css bootstrap\/dist\/styles

EXPECTED_ARGS=2
E_BADARGS=65

if [ $EXPECTED_ARGS -ne $# ]; then
    echo "Usage: `basename $0` {arg}"
    exit $E_BADARGS
else
    #sed -i 's/$1/$2/g' *
    find . -type f -not -name “.*” -print | xargs sed -i ‘s/$1/$2/g’
fi
