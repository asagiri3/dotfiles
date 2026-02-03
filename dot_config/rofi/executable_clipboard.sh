#!/usr/bin/env bash

##
## Original Author : Aditya Shakya (adi1090x)
## Original Github : @adi1090x
## Adapted by : @GeodeArc
## Extended for clipboard by : @maachue
##

clipmanager="$(<$HOME/.config/dots/clipboardmanager)"

config="$stlconf"
theme="$thmconf"

dir="$HOME/.config/rofi/clipboard"

rofi \
    -modi clipboard:~/.config/rofi/scripts/${clipmanager}.sh \
    -show clipboard \
    -show-icons \
    -theme ${dir}/config.rasi
