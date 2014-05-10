#!/usr/bin/env bash

# https://news.ycombinator.com/item?id=7724251
pandoc -t markdown --atx-headers --no-wrap $1
