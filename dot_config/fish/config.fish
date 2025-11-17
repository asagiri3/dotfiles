source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
# function fish_greeting
#     echo
# end

set -gx EDITOR nvim
set -gx DOTFILES ~/.local/share/chezmoi
set -gx NOTES ~/Notes
set -gx WALLPAPER ~/.wallpaper
set -gx DYNAMICS_THEME ~/.config/matugen

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end
