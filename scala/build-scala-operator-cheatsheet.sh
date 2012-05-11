#!/usr/bin/env sh -

# SOURCE
# http://jim-mcbeath.blogspot.com/2008/12/scala-operator-cheat-sheet.html#script
#
# INSTRUCTIONS
# 1.  Extract scala operator names from scaladoc files.
# 2.  cd to the "api" directory containing the scala API docs, then
# 3.  run this script and redirect stdout to a file.
#

docsubdir=scala
TROOT="http://www.scala-lang.org/docu/files/api"

find $docsubdir -name \*.html | \
    xargs grep -A 4 'class="signature"' | \
    grep -E " <em><a href.*_self|<div>" | \
    grep -A 1 -E '<em>.*"_self">([^a-zA-Z0-9_]|unary_)' | \
    grep -v '^--' | \
    sed -e 's|<em>.*>\(.*\)</a></em>|\1|' | \
    sed -e 's/html-/html/' | \
    sed -e 's/.*\(<div>.*\)/\1/' | \
    uniq | \
    awk '
!/<div>/ { if (d!="") { print d; d="" } }
{d=d" "$0}
' | \
    sed -e 's/^[ ]*//' | \
    sed -e 's|\(<div>.*[^>]\)$|\1 ...</div>|' | \
    sed -e 's/<div>/<span>/'  -e 's|</div>|</span>|' | \
    sort +1 | uniq | \
    sed -e 's|^\([^ ]*/\)\(.*\).html[ ]*\([^ ]*\)\(.*\)$|<br/><b>\3</b> <a href="'$TROOT'/\1\2.html">\2</a>\4|' | \
    grep -v '^<br/><b>[a-tv-zA-Z]' | \
    grep -v '[a-zA-Z]\$[a-zA-Z]' | \
    sed -e 's/unary_/~~~~unary_/' | sort | sed -e 's/~~~~unary_/unary_/' | \
    cat -
