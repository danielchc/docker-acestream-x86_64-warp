#!/bin/bash
/etc/init.d/redsocks restart
iptables -t nat -A OUTPUT -p tcp --dport 80 -j REDIRECT --to-port 12345
iptables -t nat -A OUTPUT -p tcp --dport 443 -j REDIRECT --to-port 12345
echo "Waiting for WARP"
sleep 30
curl -sf https://cloudflare.com/cdn-cgi/trace
sleep 30
/opt/acestream/start-engine @/opt/acestream/acestream.conf

