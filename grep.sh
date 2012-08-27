#!/usr/bin/env bash -

# search current directory recursively for case-insenstive term

args="$@"

grep --color -i -r $args .

