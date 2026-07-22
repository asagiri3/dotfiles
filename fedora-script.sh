#!/bin/env bash

set -e -o pipefail

. /etc/os-release
if [[ "$ID" != "fedora" ]]; then
  echo -e "\e[31;1merror\e[0m: current distro isn't fedora!"
  exit 1
fi

hostnamectl set-hostname maachu3
sudo timedatectl set-local-rtc '0'

sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo -e "max_parallel_downloads=10\nminrate=90000\nretries=2\ntimeout=5" | sudo tee -a /etc/dnf/dnf.conf

sudo dnf -y clean all
sudo dnf -y makecache

sudo dnf -y update

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo dnf -y swap ffmpeg-free ffmpeg --allowerasing
sudo dnf -y install ffmpeg-libs libva libva-utils
sudo dnf -y swap libva-intel-media-driver intel-media-driver --allowerasing

sudo dnf -y install neovim clang llvm clang-tools-extra cmake cmake-extras include-what-you-use git rust rust-analyzer cargo obs-studio
sudo dnf -y install valgrind heaptrack gdb ccache lldb mold lld man-pages-posix
sudo dnf -y copr enable lihaohong/yazi
sudo dnf -y install yazi

# VSCode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc &&
  echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo
sudo dnf -y install code

sudo dnf -y group remove libreoffice

sudo dnf -y install fcitx5 fcitx5-gtk fcitx5-qt fcitx5-mozc
sudo dnf -y remove ibus ibus-wayland

nvim "+Lazy! sync" --headless +qa

echo -e "\e[36;1mINFOMATION\e[0m
 - install fonts!
 - install a custom fcitx5-based IME!"

# sudo reboot
