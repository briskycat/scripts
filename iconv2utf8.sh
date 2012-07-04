#!/usr/bin/env bash -

# $1 = source file
# $2 = dest file

iconv $1 -t UTF-8 -c -o $2
