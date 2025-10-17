#!/usr/bin/env bash

# File config
CONFIG_FILE="$HOME/.silly_mode"
text=""

# Help
phelp() {
  cat <<EOF
Usage: sillychange.sh <mode/flag>
Avaible flags:
  -h --help       - Show this help
  -t --toggle     - Toggle change sequentially

Available modes:
  zen             - Show cbonsai
  talk            - Show fortune | cowsay
  sys             - Show fastfetch
  random          - Show randomly
  <any>           - Any other string will DISABLE silly output (no-op)
EOF
}

changef() {
  echo "$text" >"$CONFIG_FILE"
  echo "Updated $CONFIG_FILE to: $text"
}

silly_sequentially() {
  toggle_modes=(zen talk sys random)
  current_mode=$(cat "$CONFIG_FILE")
  index=-1
  for i in "${!toggle_modes[@]}"; do
    if [[ "${toggle_modes[$i]}" == "$current_mode" ]]; then
      index=$i
      break
    fi
  done

  if [[ index -ge 0 ]]; then
    index=$(((index + 1) % ${#toggle_modes[@]}))
  else
    index=0
  fi

  text="${toggle_modes[index]}"
}

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
  phelp
  exit 0
elif [[ "$1" == "-t" || "$1" == "--toggle" ]]; then
  silly_sequentially
  changef
elif [[ -z "$1" ]]; then
  echo "Missing argument. Use -h  to see usage." >&2
  exit 1
else
  text="$1"
  changef
  exit 0
fi
