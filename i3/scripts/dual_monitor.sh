#!/bin/bash

xrandr --auto

if [[ $1 = "--single" ]]; then
    xrandr --auto --output DP2 --mode 1920x1080 --output eDP1 --off
else
    xrandr --auto --output DP2 --right-of eDP1
fi

nitrogen --restore
echo "Done!"
