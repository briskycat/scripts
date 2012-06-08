#!/usr/bin/env bash -

# "quit" sends -QUIT and nginx exits gracefully.
#sudo -U www-data /etc/init.d/nginx -s quit
/etc/init.d/nginx -s quit
