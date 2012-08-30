#!/usr/bin/env bash

#still not downloading initializr correctly, leaving out half the zip content

#CMD="wget --no-check-certificate --user-agent='Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3'"
CMD="wget"

TYPE="0"
# 0 = html5bp + bootstrap css
# 1 = html5bp + bootstrap css
# 2 = html5bp + bootstrap less
# 3 = html5bp + bootstrap css + ant build script
# 4 = html5bp + bootstrap less + ant build script
# 5 = bootstrap latest

while getopts "s:style:t:type" \
    optionName; do
    case "$optionName" in 
        s)          TYPE="$OPTARG";;
        style)      TYPE="$OPTARG";;
        t)          TYPE="$OPTARG";;
        type)       TYPE="$OPTARG";;
    esac
done

case $TYPE in
    "0") CMD="$CMD 'http://www.initializr.com/builder?boot-hero&h5bp-htaccess&h5bp-nginx&h5bp-webconfig&h5bp-chromeframe&h5bp-analytics&h5bp-iecond&h5bp-favicon&h5bp-appletouchicons&h5bp-scripts&h5bp-robots&h5bp-humans&h5bp-404&h5bp-adobecrossdomain&jquery&modernizrrespond&boot-css&boot-scripts' -O initializr-css.zip";;
    "1") CMD="$CMD 'http://www.initializr.com/builder?boot-hero&h5bp-htaccess&h5bp-nginx&h5bp-webconfig&h5bp-chromeframe&h5bp-analytics&h5bp-iecond&h5bp-favicon&h5bp-appletouchicons&h5bp-scripts&h5bp-robots&h5bp-humans&h5bp-404&h5bp-adobecrossdomain&jquery&modernizrrespond&boot-css&boot-scripts'-O initializr-css.zip";;
    "2") CMD="$CMD 'http://www.initializr.com/builder?mode=less&boot-hero&h5bp-htaccess&h5bp-nginx&h5bp-webconfig&h5bp-chromeframe&h5bp-analytics&h5bp-iecond&h5bp-favicon&h5bp-appletouchicons&h5bp-scripts&h5bp-robots&h5bp-humans&h5bp-404&h5bp-adobecrossdomain&jquery&modernizrrespond&boot-css&boot-scripts' -O initializr-less.zip";;
    "3") CMD="$CMD 'http://www.initializr.com/builder?boot-hero&h5bp-htaccess&h5bp-nginx&h5bp-webconfig&h5bp-chromeframe&h5bp-analytics&h5bp-build&h5bp-iecond&h5bp-favicon&h5bp-appletouchicons&h5bp-scripts&h5bp-robots&h5bp-humans&h5bp-404&h5bp-adobecrossdomain&jquery&modernizrrespond&boot-css&boot-scripts' -O initializr-css-builder.zip";;
    "4") CMD="$CMD 'http://www.initializr.com/builder?mode=less&boot-hero&h5bp-htaccess&h5bp-nginx&h5bp-webconfig&h5bp-chromeframe&h5bp-analytics&h5bp-build&h5bp-iecond&h5bp-favicon&h5bp-appletouchicons&h5bp-scripts&h5bp-robots&h5bp-humans&h5bp-404&h5bp-adobecrossdomain&jquery&modernizrrespond&boot-css&boot-scripts' -O initializr-less-builder.zip";;
    "5") CMD="$CMD 'http://twitter.github.com/bootstrap/assets/bootstrap.zip'";;
esac

#echo "$CMD"
echo $CMD | sh
#$CMD

