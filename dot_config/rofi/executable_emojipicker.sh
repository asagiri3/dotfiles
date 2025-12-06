#!/usr/bin/env bash

##
## Original Author : Aditya Shakya (adi1090x)
## Original Github : @adi1090x
## Adapted by : @GeodeArc
##

stlconf="$(<$HOME/.config/dots/style)"
thmconf="$(<$HOME/.config/dots/theme)"
launcher="$(<$HOME/.config/dots/launcher/launchertype)"

config="$stlconf"
theme="$thmconf"

dir="$HOME/.config/rofi/$config/$theme/launcher"
mode="$launcher"

## Run
rofi \
    -show emoji \
    -theme ${dir}/${mode}.rasi
