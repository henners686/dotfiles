#!/bin/bash
pactl set-sink-volume @DEFAULT_SINK@ 100%
paplay ~/.config/system-sounds/sounds/logout.ogg
sleep 0
hyprctl dispatch exit

