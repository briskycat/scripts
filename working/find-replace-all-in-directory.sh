#!/bin/sh

# Recursively scan all text files in current directory, 
# find string $1, and replace with string $2, case sensitive.

#find . -type f -print0 | xargs -0 sed -i "s/$1/$2/g"

# replace all shebangs with '#!/usr/bin/env bash -'
find . -type f -print0 | xargs -0 sed -i "s/#!\/usr\/bin\/env\ bash\ -\ -\ -\ /#!\/usr\/bin\/env\ bash/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/usr\/bin\/env\ bash\ -\ -\ -/#!\/usr\/bin\/env\ bash/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/usr\/bin\/env\ bash\ -\ -\ /#!\/usr\/bin\/env\ bash/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/usr\/bin\/env\ bash\ -\ -/#!\/usr\/bin\/env\ bash/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/usr\/bin\/env\ bash\ -\ /#!\/usr\/bin\/env\ bash/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/usr\/bin\/env\ bash\ /#!\/usr\/bin\/env\ bash/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/usr\/bin\/env\ bash/#!\/usr\/bin\/env\ bash\ -/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/usr\/bin\/bash\ -\ /#!\/usr\/bin\/env\ bash\ -/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/usr\/bin\/bash\ -\/#!\/usr\/bin\/env\ bash\ -/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/usr\/bin\/bash\ /#!\/usr\/bin\/env\ bash\ -/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/usr\/bin\/bash/#!\/usr\/bin\/env\ bash\ -/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/bin\/sh\ -\ /#!\/usr\/bin\/env\ bash\ -/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/bin\/sh\ -\/#!\/usr\/bin\/env\ bash\ -/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/bin\/sh\ /#!\/usr\/bin\/env\ bash\ -/g"
find . -type f -print0 | xargs -0 sed -i "s/#!\/bin\/sh/#!\/usr\/bin\/env\ bash\ -/g"

