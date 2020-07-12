#!/bin/bash

xrandr --auto

if [[ $1 = "--aoc" ]]; then
    xrandr --auto --output DP2 --mode 1920x1080 --output eDP1 --off --output DP1 --off
elif [[ $1 = "--dual" ]]; then
    xrandr --auto --output eDP1 --mode 1366x768 --output DP2 --mode 1920x1080 --right-of eDP1
elif [[ $1 = "--dualv" ]]; then
    xrandr --auto --output eDP1 --mode 1366x768 --output DP2 --mode 1280x1024 --right-of eDP1
elif [[ $1 = "--vestel" ]]; then
    xrandr --auto --output DP1 --mode 1280x1024 --output DP2 --off --output eDP1 --off
elif [[ $1 = "--all" ]]; then
    xrandr --auto --output DP2 --mode 1920x1080 --output DP1 --mode 1280x1024 --right-of DP2 --output eDP1 --left-of DP2
elif [[ $1 = "--builtin" ]]; then
    xrandr --auto --output eDP1 --mode 1366x768 --output DP2 --off
fi

nitrogen --restore
echo "Done!"
