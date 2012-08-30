#!/usr/bin/env bash

# http://www.linuxquestions.org/questions/linux-security-4/correct-safe-iptables-rules-for-redirecting-port-80-to-8080-a-819586/
iptables -t mangle -A PREROUTING -p tcp --dport 8080 -j MARK --set-mark 1
iptables -I INPUT -m mark --mark 1 -j DROP
