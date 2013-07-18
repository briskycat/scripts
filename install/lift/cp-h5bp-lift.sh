#!/usr/bin/env bash

# run from root directory of unzipped H5BP archive 
# single argument = your Lift project root directory

LIFT="src/main/webapp"
SRC="."
DST=""

if [ $1 ]; then
echo """
Executing...
    cp -r $SRC/css $1/$LIFT/styles
    cp -r $SRC/js $1/$LIFT/scripts
    cp -r $SRC/img/*.* $1/$LIFT/images
    cp -r $SRC/*.html $1/$LIFT
    cp -r $SRC/*.ico $1/$LIFT
    cp -r $SRC/*.png $1/$LIFT
    cp -r $SRC/*.txt $1/$LIFT
    cp -r $SRC/*.xml $1/$LIFT
"""
    cp -r $SRC/css $1/$LIFT/styles
    cp -r $SRC/js $1/$LIFT/scripts
    cp -r $SRC/img/*.* $1/$LIFT/images
    cp -r $SRC/*.html $1/$LIFT
    cp -r $SRC/*.ico $1/$LIFT
    cp -r $SRC/*.png $1/$LIFT
    cp -r $SRC/*.txt $1/$LIFT
    cp -r $SRC/*.xml $1/$LIFT
echo "...Complete."
else
    echo "Error:  Please specify your Lift project's root directory.  No files copied."
fi
