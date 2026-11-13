#!/sbin/sh
# prepdecrypt.sh - wait for the trusty IPC nodes, then signal crypto.ready
#
# keymint and gatekeeper need the trusty modules TWRP loads through
# TW_LOAD_VENDOR_BOOT_MODULES.

setprop crypto.ready 1
echo "crypto.ready set"
