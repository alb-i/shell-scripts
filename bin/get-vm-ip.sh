#!/bin/sh

virsh net-dhcp-leases default | grep 'ipv\(4\|6\)' | grep $1 | awk 'BEGIN { FS="ipv4" } { print $2 }' | awk 'BEGIN { FS="/" } { print $1 }' | sed 's/\s*//'
