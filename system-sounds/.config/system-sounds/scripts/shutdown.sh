#!/bin/bash

# Play shutdown sound
pactl set-sink-volume @DEFAULT_SINK@ 100%
paplay ~/.config/system-sounds/sounds/shutdown.ogg

# Give time for the sound to finish (adjust if your file is longer)
sleep 0 #2

# Power off the system
systemctl poweroff

