#!/bin/bash
BRIGHTNESS="$1"

if [ "$BRIGHTNESS" = "up" ]; then
        brightnessctl -e4 -n2 set 5%+ -m | awk -F, '{ print $4 }' > ~/.config/sway/brightness
elif [ "$BRIGHTNESS" = "down" ]; then
    brightnessctl -e4 -n2 set 5%- -m | awk -F, '{ print $4 }' > ~/.config/sway/brightness
fi
