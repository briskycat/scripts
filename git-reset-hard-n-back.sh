#!/usr/bin/env bash -

# roll back head by n commits
# $2 = number of commits by which to rollback HEAD
# --hard rolls back not just commit log but files in working directory as well

git reset --hard HEAD~$2
