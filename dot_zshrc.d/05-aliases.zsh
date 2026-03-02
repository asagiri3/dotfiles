alias ls=eza
alias la="ls -la"
alias lt="ls --tree"
alias lgit="ls --git"

alias gs="git status -sb"
alias gco="git checkout"
alias ga="git add"
alias gaa="git add -A"
alias gc="git commit"
alias gca="git commit --amend"
alias gph="git push"
alias gpl="git pull"
alias gdf="git diff"
alias gl="git log --oneline --graph --decorate --all"
alias gch="git fetch ; git status"
alias grs="git remote show origin"

alias ch="chezmoi"
alias chad="chezmoi add"
alias chap="chezmoi apply"
alias chd="chezmoi diff"
alias chda="chezmoi data"
alias chs="chezmoi status"
alias che="chezmoi edit"

alias b="bat"
alias bp="bat --plain"
alias bn="bat --paging=never"
alias bpn="bn --plain"

alias s="sudo"

alias astro="NVIM_APPNAME=astro nvim"
alias matugen-gtk="matugen --config ~/.config/matugen/config-gtk.toml"

alias change="$EDITOR ~/.config/fish/"
alias niri-ch="$EDITOR ~/.config/niri/"
alias sync="xclip -o | wl-copy"

alias bonsai='cbonsai --life 40 --multiplier 5 --time 20 --screensaver'
alias eww-bar="eww -c $HOME/.config/eww/bar"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

function fetch() {
    if [[ ! -v TERM_PROGRAM ]]; then
        fastfetch
    fi

    if [[ "$TERM_PROGRAM" == "WezTerm" ]]; then
        fastfetch --iterm "$HOME/.face" --logo-width 32
    elif [[ "$TERM" == "foot" ]]; then
        fastfetch --sixel "$HOME/.face"
    else
        fastfetch
    fi
}
