#!/usr/bin/env bash

eww kill
eww -c $HOME/.config/eww/bar kill

$HOME/.config/eww/scripts/index_ouputs.sh | while read name; do
    echo "Starting \`bar$name\` on \`$name\`"
    eww -c $HOME/.config/eww/bar open "bar$name" --screen "$name"
done
