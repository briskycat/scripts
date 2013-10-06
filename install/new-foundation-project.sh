#!/usr/bin/env bash

## Generate a Foundation project using Compass
## Takes one argument:  project-name (must be one word)

if [ $1 ]; then
    echo 'Executing: compass create $1 -r zurb-foundation --using foundation ...'
    compass create $1 -r zurb-foundation --using foundation
    echo '... done.'
else
    echo "Error:  Project Name required.  Must be one word, or multiple words separated with hyphens or underscores."
fi
