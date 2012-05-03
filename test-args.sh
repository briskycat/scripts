#!/usr/bin/env bash -

##args=0
args="$@"

if [ -n args ]; then
    if ["update" == $2]; then
        echo "yes"
    else 
        echo "no"
    fi
fi
