#!/usr/bin/env bash -

# roll back head by n commits
# $1 = number of commits by which to rollback HEAD
# --hard rolls back not just commit log but files in working directory as well

LEVEL=1

if [ -e $1 ]; then
    LEVEL=$1
fi

git reset --hard HEAD~$LEVEL
