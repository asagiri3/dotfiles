#!/usr/bin/env bash

eww kill
eww -c $HOME/.config/eww/bar kill

state=$($HOME/.config/eww/scripts/index_ouputs.sh)
line=$(printf '%s\n' "$state" | wc -l)
line=$((line))

# echo $line
# echo $state

if (($line < 2)); then
    eww -c $HOME/.config/eww/bar open bar$(echo "$state" | head -n 1) --monitor 0
    exit 0
fi

$HOME/.config/eww/scripts/index_ouputs.sh | while read name; do
    echo "Starting bar$name on $name"
    eww -c $HOME/.config/eww/bar open bar$name
done
