#!/usr/bin/env bash

# http://www.reddit.com/r/IAmA/comments/1w1y5m/we_are_the_google_site_reliability_engineering/cexzg5d
# entropy is a finite resource, this shows system entropy remaining at /dev/random

cat /proc/sys/kernel/random/entropy_avail
