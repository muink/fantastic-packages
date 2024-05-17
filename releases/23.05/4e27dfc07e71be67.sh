#!/bin/sh
KEYID=4e27dfc07e71be67
mkdir -p /etc/opkg/keys 2>/dev/null
cat <<- PUBKEY > /etc/opkg/keys/${KEYID}
untrusted comment: Public usign key for fantastic-packages builds
RWROJ9/AfnG+Z5/OorLiBXqr+XUlUd32eaDWKgodp1GdYdSrt/4JCSOt

PUBKEY
