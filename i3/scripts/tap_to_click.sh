#!/bin/bash

XINPUT_ID=$(xinput --list | grep Synaptics | cut -d'=' -f2 | cut -d$'\t' -f1)
xinput set-prop $XINPUT_ID "libinput Tapping Enabled" 1
