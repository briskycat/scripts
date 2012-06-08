#!/usr/bin/env bash -

# "stop" sends -TERM and nginx exits immediately.
#sudo -U www-data /etc/init.d/nginx -s stop
/etc/init.d/nginx -s stop
