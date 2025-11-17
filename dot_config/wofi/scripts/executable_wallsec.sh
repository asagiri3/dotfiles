#!/usr/bin/env bash

WALL_DIR="$HOME/Pictures/Wallpaper"
WOFI_CONF="$HOME/.config/wofi/walsec/config"
WOFI_STYLE="$HOME/.config/wofi/walsec/style.css"

entries=""
for img in "$WALL_DIR"/*; do
    [[ -f "$img" ]] || continue
    entries+=":img:$img\n"
done

choice=$(echo -e "$entries" | wofi -I --dmenu --prompt "Choose wallpaper" -c "$WOFI_CONF" -s "$WOFI_STYLE")

[[ -z "$choice" ]] && exit 0

choice="${choice#:img:}"

echo "$choice"
