#!/bin/sh

# Recursively scan all text files in current directory, 
# find string $1, and replace with string $2, case sensitive.

#find . -type f -print0 | xargs -0 sed -i "s/$1/$2/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/usr\/bin\/env\ bash/#!\/usr\/bin\/env\ bash\ -/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/usr\/bin\/env\ bash\ -\ -\ /#!\/usr\/bin\/env\ bash\ -/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/usr\/bin\/env\ bash\ -\ -/#!\/usr\/bin\/env\ bash\ -/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/usr\/bin\/env\ bash\ -\ /#!\/usr\/bin\/env\ bash\ -/g"

