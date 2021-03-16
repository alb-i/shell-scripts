#!/bin/bash

WHICHHOST=$1

while ! ping -c 1 $WHICHHOST; do
	echo "Waiting for $WHICHHOST..."
	sleep 1
done
