#!/bin/sh - 

# simple script to combine required files from Cloudbees Lift 2.4 Quickstart template
# with Lift 2.5 template.
#
# expects to be run from directory with both github repos as subdirectories, named 
# lift_24_cloudbees/ and lift_25_sbt/, respectively.
#
# git clone git://github.com/CloudBees-community/lift_template.git lift_24_cloudbees
# git clone git://github.com/lift/lift_25_sbt.git
#
# creates third subdirectory, lift_25_cloudbees/.
#
# still requires some manual setup - lift_25_cloudbees/build.sbt and 
# lift_25_cloudbees/project/plugins.sbt must be manually merged into 
# lift_25_cloudbees/project/build/LiftProject.scala, and both 
# build.properties and LiftProject.scala must be updated for Lift 2.5.
# Boot.scala remains unchanged, the default lift_25_sbt Boot.scala is effectively the
# same as cloudbees's Boot.scala.
# 

cp -r lift_25_sbt/scala_29/lift_basic lift_25_cloudbees
cp -r lift_25_sbt/.gitignore lift_25_cloudbees

cp -r lift_24_cloudbees/clickstart.json lift_25_cloudbees
cp -r lift_24_cloudbees/icon.png lift_25_cloudbees
cp -r lift_24_cloudbees/pom.xml lift_25_cloudbees
cp -r lift_24_cloudbees/project/build lift_25_cloudbees/project
cp -r lift_24_cloudbees/project/build.properties lift_25_cloudbees/project

mv lift_25_cloudbees/build.sbt lift_25_cloudbees/project/build/build.sbt


