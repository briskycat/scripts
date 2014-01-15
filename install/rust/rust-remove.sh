#!/usr/bin/env bash -

# uninstall rust from update-alternatives.
# WARNING - this will not remove rust from the system, it will still be in /opt or 
#           or wherever you built it.  However, it will uninstall all rust versions from 
#           update-alternatives.
# 

update-alternatives --remove-all rust
