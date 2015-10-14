#!/usr/bin/env bash

#http://stackoverflow.com/questions/10312521/how-to-fetch-all-git-branches

git branch -r | grep -v -- ' -> ' | while read remote; do git branch --track "${remote#origin/}" "$remote" 2>&1 | grep -v ' already exists'; done

#After that, 'git fetch --all' will update all local copies of remote branches.
#Also, 'git pull --all' will update your local tracking branches, but depending on your local commits and how the 'merge' configure option is set it might create a merge commit, fast-forward or fail.
