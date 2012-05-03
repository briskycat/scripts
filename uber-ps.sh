#!/usr/bin/env bash -

ps -x -o rss,command | awk '{sum+=$2} END {printf "%9.3f %s\n", sum/1024, "MB" }'
