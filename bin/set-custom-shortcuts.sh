#!/bin/bash

dconf load '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/' <<EOF
[custom0]
binding='<Super>F7'
command='set-brightness.sh'
name='reset-brightness'

[custom1]
binding='<Super>F9'
command='adjust-brightness.py +.05'
name='increase brightness'

[custom2]
binding='<Super>F8'
command='adjust-brightness.py -0.05'
name='decrease brightness'
EOF
