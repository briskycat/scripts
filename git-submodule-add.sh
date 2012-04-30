#!/bin/sh

# $1 = source repo for submodule
# $2 = local name

argv=$@

echo "Adding submodule from repo $1 as submodules/$2"

git submodule add $1 submodules/$2
