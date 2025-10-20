# alias.nu

# DO NOT UNCOMMENT ALL THE `eza, files, lists, dicrectories`
# # eza, files, lists, directories
# alias ls = eza --group-directories-first
# alias l=eza -l --icons --group-directories-first                   # long list
# alias la=eza -la --icons --group-directories-first                 # show hidden
# alias ll = eza -l --icons --group-directories-first --git            # show git info
# alias lt = eza -T --icons --group-directories-first                  # tree view
# alias lS=eza -la --sort=size --icons --group-directories-first     # sort by size
# alias lM=eza -la --sort=modified --icons --group-directories-first # sort by modified time

alias x = eza --icons --group-directories-first
alias xa = eza --icons -a --group-directories-first
alias xl = eza --icons -l --group-directories-first
alias xla = eza -la --group-directories-first
alias xt = eza --icons --tree --group-directories-first
alias xta = eza --icons --tree --group-directories-first
alias xgit = xla --git

# git, repo
def gch [] {
    git fetch
    git status -sb
}

alias gs = git status -sb # -sb = short, branch
alias gco = git checkout
alias ga = git add
alias gaa = git add -A
alias gc = git commit
alias gca = git commit --amend
alias gph = git push
alias gpl = git pull
alias gdf = git diff
alias gl = git log --oneline --graph --decorate --all
alias gch = gch
alias grs = git remote show origin

alias ch = chezmoi
alias chad = chezmoi add
alias chap = chezmoi apply
alias chd = chezmoi diff
alias chda = chezmoi data
alias chs = chezmoi status

alias b = bat
alias bp = bat --plain
alias bn = bat --paging=never
alias bpn = bn --plain

# Miscellaneous
def dfzf [] { cd (ls ** | where type == "dir" | get name | to text | fzf) }

alias change = nvim $nu.default-config-dir
alias dfzf = dfzf
