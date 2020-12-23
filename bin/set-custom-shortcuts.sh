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

[custom3]
binding='<Super>F4'
command='set-xrandr.sh'
name='reset screen settings'

[custom4]
binding='<Super>F3'
command='set-xrandr-2.sh'
name='reset screen settings 2'

[custom5]
binding='<Super>F2'
command='set-xrandr-3.sh'
name='reset screen settings 3'
EOF
