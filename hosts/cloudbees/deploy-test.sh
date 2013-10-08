#!/usr/bin/env bash

WAR="$1"

bees app:deploy $WAR dataalpha/dataalpha-test
