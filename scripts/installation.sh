#!/usr/bin/bash

set -euo pipefail

# update system
sudo pacman -Syu --no-confirm

# remove unused packages that installed by default

sudo pacman -Rns cachyos-niri-settings mako --no-confirm

# installations packages

# dev
sudo pacman -S paru xclip fontconfig unzip flatpak imagemagick ffmpeg xwayland-satellite \
    unrar unzip npm wtype github-cli fish brightnessctl rustup clang llvm \
    cmake ninja neovim code \
    --no-confirm

# coreutils
sudo pacman -S btop fastfetch ripgrep rd fzf yazi chezmoi \
    --no-confirm

# fonts
sudo pacman -S ttf-fira-code ttf-firacode-nerd ttf-nerd-fonts-symbols \
    ttf-nerd-fonts-symbols-common adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts \
    adobe-source-han-sans-cn-fonts \
    noto-fonts-emoji noto-font-cjk \
    --no-confirm

# applications
sudo pacman -S mpv dolphin qt5ct nwg-look firefox kitty ghostty wezterm foot \
    --no-confirm

# ricing utils
sudo pacman -S breeze rofi wofi swww matugen swaync adw-gtk-theme \
    --no-confirm

# required things
sudo pacman -S qt5-wayland \
    --no-confirm

# AUR

paru -S calibre-bin clipvault \
    --no-confirm

# flatpak

flatpak install com.discordapp.Discord com.github.tchx84.Flatseal com.spotify.Client md.obsidian.Obsidian

# rustup

rustup toolchain install stable

# setup gh

gh auth login

# cargo

if [[ ! -d "$HOME/.cargo" ]]; then
    mkdir "$HOME/.cargo"
fi

if [[ ! -f "$HOME/.cargo/config.toml" ]]; then
    touch "$HOME/.cargo/config.toml"
fi

echo "net.git-fetch-with-cli = true" >"$HOME/.cargo/config.toml"

cargo install --git https://github.com/elkowar/eww.git --no-default-features --features wayland
cargo install --git ssh://git@github.com/maachue/chsat-color.git

# post-install

# backup `.config`
cp "$HOME/.config" "$HOME/.config.bak"

chezmoi init --apply git@github.com:asagiri3/dotfiles.git

nvim --headless "+Lazy! sync" "+qa"

walsec # call wallpaper selection to init color scheme

# warning

cat <<EOF
required fonts (manual install):
- Libertinus Serif
- Literata
- Montserrat
- Rubik

required reboot to fully applied dotfiles
EOF
