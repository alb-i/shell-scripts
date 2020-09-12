#!/bin/bash

VMNAME="$1"

ssh $(get-vm-ip.sh $VMNAME) "${@:2}"
