#!/usr/bin/env bash

phelp() {
    cat <<EOF
Usage: trasition [ -h | -g | -m ]
EOF
}

while [[ $# -gt 0 ]]; do
    case "$1" in
    -h | --help)
        phelp
        exit 0
        ;;
    -g)
        mode="gtk"
        ;;
    -m)
        mode="non"
        ;;
    esac
    shift
done

WAL=$($HOME/.config/wofi/scripts/wallsec.sh)

echo $WAL >&2
echo "$mode"

case "$mode" in
gtk) $HOME/.local/bin/themesec -d -g "$WAL" ;;
non) $HOME/.local/bin/themesec -m "$WAL" ;;
esac
