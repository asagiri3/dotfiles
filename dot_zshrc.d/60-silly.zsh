silly_zen() { cbonsai -p >&2; }
silly_talk() { fortune | cowsay -f stegosaurus >&2; }
silly_sys() { fetch >&2; }

random_printing() {
  modes=(silly_zen silly_talk silly_sys)
  RAN=$((RANDOM % ${#modes[@]}))
  ${modes[$RAN]}
}

if [[ -z "$P9K_TTY" || "$P9K_TTY" == "$(tty)" ]] && [[ ! -v NVIM ]]; then
  if [[ -f "$HOME/.silly_mode" ]]; then
      case "$(cat "$HOME/.silly_mode")" in
      zen)   silly_zen ;;
      talk)  silly_talk ;;
      sys)   silly_sys ;;
      random) random_printing ;;
      *) ;;
      esac
  fi
fi
