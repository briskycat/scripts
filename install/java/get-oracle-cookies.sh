#!/usr/bin/env bash

echo ".mode tabs
select host, case when host glob '.*' then 'TRUE' else 'FALSE' end, path,
case when isSecure then 'TRUE' else 'FALSE' end, expiry, name, value
from moz_cookies;" | sqlite3 ./cookies.sqlite | grep -i oracle > ~/src/java/oracle-cookies.txt
