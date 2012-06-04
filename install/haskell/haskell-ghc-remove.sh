#!/usr/bin/env bash -

# uninstall ghc from update-alternatives.
# WARNING - this will not uninstall ghc from the system, it will still be in /opt or 
#           or wherever you built it.  However, it will install all ghc's from 
#           update-alternatives.
# 

update-alternatives --remove-all ghc
