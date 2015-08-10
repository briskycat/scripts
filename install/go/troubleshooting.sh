#!/usr/bin/env bash

strace -o t.txt update-alternatives --verbose --install /usr/local/go/bin/go go /opt/go/1.4.2/bin/go 1200
