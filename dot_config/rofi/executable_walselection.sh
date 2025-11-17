#!/usr/bin/env bash

## Original rofi : @GeodeArc
## Adopted & Extended by : @maachue
## Thanks to saneaspect for tutorial

WALLDIR=$(envsubst <"$HOME/.config/dots/waldir")

if [[ "${WALLDIR: -1}" == "/" ]]; then
    WALLDIR="${WALLDIR%?}"
fi

stlconf="$(<$HOME/.config/dots/style)"
thmconf="$(<$HOME/.config/dots/theme)"
launcher="$(<$HOME/.config/dots/launcher/walsectype)"

config="$stlconf"
theme="$thmconf"

entries=""
for img in "$WALLDIR"/*; do
    [[ -f "$img" ]] || continue
    fname="$(basename "$img")"
    entries+="$fname\0icon\x1f$img\n"
done

dir="$HOME/.config/rofi/$config/$theme/wallselect"
mode="$launcher"

choice=$(echo -e "$entries" | rofi -dmenu -theme ${dir}/${mode}.rasi)
choice="$WALLDIR/$choice"

echo "$choice"
