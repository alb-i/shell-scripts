#!/bin/bash



xrandr --output DP-0 --mode "1280x800" --pos "0x0"  --panning "0x0/0x0"
xrandr --output DP-2 --mode "1280x800" --pos "0x0"  --panning "0x0/0x0"
xrandr --output eDP-1-1 --mode "1280x800" --pos "0x0"
xrandr --output eDP-1 --mode "1280x800" --pos "0x0"
xrandr --output HDMI-0 --mode "1280x800" --pos "0x0"

#gsettings set org.gnome.desktop.interface scaling-factor 2
#gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "[{'Gdk/WindowScalingFactor', <2>}]"
