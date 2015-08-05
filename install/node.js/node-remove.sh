#!/usr/bin/env bash

# remove node.js from the system user via ubuntu update-alternatives, rather than as current user via .profile.
# system user in this case = /usr/bin tested on Ubuntu 12.04 only

update-alternatives --remove-all nodejs
