#!/bin/bash


if ! [ -z "$1" ]; then
	LEVEL="$1"
else
	LEVEL=$(cat $HOME/var/last-brightness)
fi

echo $LEVEL > $HOME/var/last-brightness

LVLA=$(bc <<< "$LEVEL * 0.75")
LVLB=$(bc <<< "$LEVEL * 0.95")
LVLC=$(bc <<< "$LEVEL * 1.0")



set -x

xrandr --output eDP-1-1 --gamma 1:.95:.9 --brightness "$LVLA"
xrandr --output eDP-1 --gamma 1:.95:.9 --brightness "$LVLA"
xrandr --output DP-0 --gamma 1:1:1 --brightness "$LVLB"
xrandr --output DP-2 --gamma 1:1:1 --brightness "$LVLC"
