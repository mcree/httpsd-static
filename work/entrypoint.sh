#!/bin/sh

mkdir -p /certs
cd /certs
sh /work/generate-certs
cat /certs/ca-cert.pem /certs/key.pem /certs/cert.pem > /certs/all.pem

HOSTIP=$(ip addr show eth0 | awk '$1 == "inet" {print $2}' | cut -f1 -d/)

cat <<EOF
======================================================================
Listening on https://$HOSTIP/
======================================================================
EOF

exec "$@"
