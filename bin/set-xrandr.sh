#!/bin/bash


xrandr --output DP-0 --mode "3840x2160" --pos "0x0" --panning "3840x2160/3840x2160"
xrandr --output eDP-1-1 --mode "3840x2160" --pos "0x2160"
xrandr --output eDP-1 --mode "3840x2160" --pos "0x2160"
xrandr --output HDMI-0 --mode "1920x1080" --pos "0x2160" --scale 2x2

gsettings set org.gnome.desktop.interface scaling-factor 2
gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "[{'Gdk/WindowScalingFactor', <2>}]"
