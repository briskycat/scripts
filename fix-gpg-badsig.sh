#!/usr/bin/env bash -
# http://www.ubuntugeek.com/how-to-fix-the-ubuntu-gpg-error-badsig.html
# http://askubuntu.com/questions/1877/what-is-the-easiest-way-to-resolve-apt-get-badsig-gpg-errors

$ sudo -i
# apt-get clean
# cd /var/lib/apt
# mv lists lists.old
# mkdir -p lists/partial
# apt-get clean
# apt-get update
