#!/usr/bin/env bash

##
## Original Author : Aditya Shakya (adi1090x)
## Original Github : @adi1090x
## Adapted by : @GeodeArc
## Extended for clipboard by : @maachue
##

stlconf="$(<$HOME/.config/dots/style)"
thmconf="$(<$HOME/.config/dots/theme)"
clipmanager="$(<$HOME/.config/dots/clipboardmanager)"

config="$stlconf"
theme="$thmconf"

dir="$HOME/.config/rofi/$config/$theme/clipboard"

rofi \
    -modi clipboard:~/.config/rofi/scripts/${clipmanager}.sh \
    -show clipboard \
    -show-icons \
    -theme ${dir}/main.rasi
