silly_zen()  { cbonsai -p }
silly_talk() { fortune | cowsay -f stegosaurus }
silly_sys()  { fetch }

silly_printing() {
  local mode_file="$HOME/.silly_mode"
  [[ -f "$mode_file" ]] || return

  local mode=$(<"$mode_file")
  [[ "$mode" == "none" ]] && return

  if [[ "$mode" == "random" ]]; then
    local modes=(zen talk sys)
    mode=${modes[$(( RANDOM % ${#modes[@]} + 1 ))]}
  fi

  case "$mode" in
    zen)  silly_zen  ;;
    talk) silly_talk ;;
    sys)  silly_sys  ;;
  esac
}

if [[ -z "$P9K_TTY" || "$P9K_TTY" == "$(tty)" ]] && [[ ! -v NVIM ]]; then
  silly_printing
fi
