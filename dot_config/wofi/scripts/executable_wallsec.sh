#!/usr/bin/env bash

WALL_DIR="$HOME/Pictures/Wallpaper"

entries=""
for img in "$WALL_DIR"/*; do
    [[ -f "$img" ]] || continue
    entries+=":img:$img\n"
done

choice=$(echo -e "$entries" | wofi -I --dmenu --prompt "Choose wallpaper" -Dimage_size=200)

[[ -z "$choice" ]] && exit 0

choice="${choice#:img:}"

echo "$choice"
