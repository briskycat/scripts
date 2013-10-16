#!/usr/bin/env bash

args="$@"

for arg in $args
do 
    sudo chmod 754 "$arg"
done
