#!/usr/bin/env bash

# wget all files of specified type from url, spoof user-agent as Mozilla 5.0 (vs wget).
# requires three cmdline arguments:
# 1) filetype extension to get all files of that type (pdf, html, etc).  Just the extension, no quotes, no period, no embellisments.
# 2) recursion max depth level.  default is 1.
# 2) url to download.  Can end in /, or .html/asp/whatever.

FT=".pdf"   # Filetype or filename pattern (like "SEv2*.pdf")
LV="1"      # Recursion level
URL=""      # 

while getopts "f:l:u"\
    optionName; do
    case "$optionName" in 
        f)      FT="$OPTARG";;
        l)      LV="$OPTARG";;
        u)      URL="$OPTARG";;
    esac
done

echo "wget -rA \"$FT\" --level=$LV --no-parent --user-agent=\"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3\" \"$URL\""
wget -rA "$FT" --level=$LV --no-parent --user-agent="Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" "$URL"
