#!/usr/bin/env bash

## Original rofi : @GeodeArc
## Adopted & Extended by : @maachue
## Thanks to saneaspect for tutorial

WALLDIR=$(envsubst <"$HOME/.config/dots/waldir")

if [[ "${WALLDIR: -1}" == "/" ]]; then
    WALLDIR="${WALLDIR%?}"
fi

entries=""
for img in "$WALLDIR"/*; do
    [[ -f "$img" ]] || continue
    fname="$(basename "$img")"
    entries+="$fname\0icon\x1f$img\n"
done

dir="$HOME/.config/rofi/wallsec/config.rasi"

choice=$(echo -e "$entries" | rofi -dmenu -theme ${dir})
choice="$WALLDIR/$choice"

echo "$choice"
