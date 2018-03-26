#!/bin/bash

xrandr --auto
xrandr --auto --output DP2 --right-of eDP1
nitrogen --restore
echo "Done!"
