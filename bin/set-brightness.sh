#!/bin/bash


if ! [ -z "$1" ]; then
	LEVEL="$1"
else
	LEVEL=$(cat $HOME/var/last-brightness)
fi

echo $LEVEL > $HOME/var/last-brightness

LVLA=$(bc <<< "$LEVEL * 0.75")
LVLB=$(bc <<< "$LEVEL * 0.95")



set -x

xrandr --output eDP-1-1 --gamma 1:.95:.9 --brightness "$LVLA"
xrandr --output DP-0 --gamma 1:1:1 --brightness "$LVLB"
