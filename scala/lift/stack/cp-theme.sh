#!/bin/bash -

#!/usr/bin/env bash -

#shopt -s dotglob
#setopt extendedglob

LIFT="./src/lift_25_sbt/scala_29/lift_blank"
THEME="./themes/css"
TARGET="./lift_blank"

while getopts "lift:theme:target"\
    optionName; do
    case "$optionName" in
        lift)       LIFT="$OPTARG";;
        theme)      THEME="$OPTARG";;
        target)     TARGET="$OPTARG";;
        [?]) printErrorHelpAndExit "badOptionHelp";;
    esac
done

#0.  Start with a fresh lift_blank Lift 2.5 template
if [ -d "$TARGET" ]; then
    t=$(date +%s);
    mv $TARGET $TARGET.backup.$t
    cp -r $LIFT $TARGET
fi

#1.  backup lift_blank/src/main/webapp/index.html
if [ ! -d "$TARGET/src/main/webapp/templates-hidden/archive" ]; then
    mkdir -p $TARGET/src/main/webapp/templates-hidden/archive
    mv -f $TARGET/src/main/webapp/index.html $TARGET/src/main/webapp/templates-hidden/archive/index.html.lift.original
fi

#2.  copy theme into lift project
cp -r $THEME/* $TARGET/src/main/webapp/
#if [ ! -d "$TARGET/src/main/webapp/css" ]; then
#    mkdir -p "$TARGET/src/main/webapp/css"
#fi

#3.  move build to sbt unmanaged jar directory
#  https://github.com/harrah/xsbt/wiki/Getting-Started-Library-Dependencies
if [ ! -d $TARGET/lib ]; then
    mkdir -p $TARGET/lib
    if [ -d "$TARGET/lib" ]; then
        mv $TARGET/src/main/webapp/build $TARGET/lib
    fi
fi

