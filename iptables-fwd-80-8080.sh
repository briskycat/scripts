#!/usr/bin/env bash

# http://www.linuxquestions.org/questions/linux-security-4/correct-safe-iptables-rules-for-redirecting-port-80-to-8080-a-819586/
#iptables -v -t mangle -A PREROUTING -p tcp --dport 8080 -j MARK --set-mark 1
#iptables -v -I INPUT -m mark --mark 1 -j DROP

# http://chiralsoftware.com/linux-system-administration/ubuntu-firewall-iptables.seam
iptables -I INPUT 1 -i lo -j ACCEPT
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
#iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
#iptables -A INPUT -p tcp --dport 8443 -j ACCEPT
iptables -A INPUT -j DROP
iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8080
iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080
iptables -t nat -A PREROUTING -p tcp --dport 443 -j REDIRECT --to-port 8443
iptables -t nat -A OUTPUT -o lo -p tcp --dport 443 -j REDIRECT --to-port 8443
iptables-save > /etc/iptables.rules

# to have this configuration added at startup, make sure /etc/network/interfaces has 
# the following line immediately after the 'iface eth0' line:
pre-up iptables-restore < /etc/iptables.rules
