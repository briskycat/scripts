#!/usr/bin/env bash

# http://stackoverflow.com/questions/1260748/how-do-i-remove-a-git-submodule/
# http://stackoverflow.com/questions/16160993/moving-a-git-working-copy-containing-submodules/16161950#16161950

if [ -z "$1" ]; then
 
    echo "No command-line arguments.  Aborting..."
    echo "Please specify the submodule to remove."
    echo "Usage: sh git-rm-submodule.new.sh submodules/module-name"
    exit;     

else

    echo "Executing 'git submodule deinit $1' ..."
    git submodule deinit $1

fi
