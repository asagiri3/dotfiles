source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch

# === cbonsai ===
# function fish_greeting
#     cbonsai -p
# end

set -gx EDITOR nvim
set -gx DOTFILES ~/.local/share/chezmoi
set -gx NOTES ~/Notes
set -gx WALLPAPER ~/.wallpaper
set -gx DYNAMICS_THEME ~/.config/matugen

# test starship :)
starship init fish | source

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
