#!/usr/bin/env bash -

# $1 = source file
# $2 = dest file

# usage:
# sh iconv2utf8 2012-07-04-the-pathology-of-big-data.markdown 2012-07-04-the-pathology-of-big-data.markdown.utf8

iconv $1 -t UTF-8 -c -o $2
