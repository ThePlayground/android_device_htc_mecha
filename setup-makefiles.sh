#!/bin/sh

DEVICE=mecha

mkdir -p ../../../vendor/htc/$DEVICE

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/htc/$DEVICE/mecha-vendor.mk

\$(call inherit-product, vendor/htc/__DEVICE__/mecha-vendor-blobs.mk)
EOF
