#!/usr/bin/env bash

eww kill

$HOME/.config/eww/scripts/index_ouputs.sh | while read name; do
    echo "Starting bar$name on $name"
    eww open bar$name
done
