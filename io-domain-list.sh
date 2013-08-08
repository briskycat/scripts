#!/usr/bin/env bash

for i in `egrep '^[a-z]{3}$' /usr/share/dict/words` 
    do
        whois $i.io | grep -q '\- Available' && echo $i.io
    done
