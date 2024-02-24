#!/bin/bash
/etc/init.d/redsocks restart
iptables -t nat -A OUTPUT -p tcp --dport 80 -j REDIRECT --to-port 12345
iptables -t nat -A OUTPUT -p tcp --dport 443 -j REDIRECT --to-port 12345
echo "Waiting for WARP...."
sleep 30
curl -s https://cloudflare.com/cdn-cgi/trace
echo "Starting Acestream...."
/opt/acestream/start-engine @/opt/acestream/acestream.conf

