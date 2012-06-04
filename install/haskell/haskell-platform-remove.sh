#!/usr/bin/env bash -

# uninstall the haskell platform from update-alternatives (assuming you used the
#   correspondig haskell-platform-install.sh script to install platform.
# WARNING - this will not uninstall ghc from the system, it will still be in /opt or 
#   or wherever you built it.  However, it will install all ghc's from 
#   update-alternatives.

update-alternatives --remove-all cabal
