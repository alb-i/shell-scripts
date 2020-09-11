#!/bin/bash

MOUSE_ID=$(xinput --list | grep -i -m 1 'XTEST pointer' | grep -o 'id=[0-9]\+' | grep -o '[0-9]\+')

STATE=$(xinput --query-state $MOUSE_ID | grep 'button\[1\]=up')

if [ -z "$STATE" ] 
then
	#DOWN
	echo "DOWN"
	xdotool mouseup 1
else
	#UP
	echo "UP"
	xdotool mousedown 1
fi
