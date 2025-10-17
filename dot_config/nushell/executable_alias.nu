# alias.nu

# DO NOT UNCOMMENT ALL THE `eza, files, lists, dicrectories`
# # eza, files, lists, directories
# alias ls = eza --group-directories-first
# alias l=eza -l --icons --group-directories-first                   # long list
# alias la=eza -la --icons --group-directories-first                 # show hidden
alias ll = eza -l --icons --group-directories-first --git            # show git info
alias lt = eza -T --icons --group-directories-first                  # tree view
# alias lS=eza -la --sort=size --icons --group-directories-first     # sort by size
# alias lM=eza -la --sort=modified --icons --group-directories-first # sort by modified time

# git, repo
def gch [] {
    git fetch
    git status -sb
}

alias gs = git status -sb # -sb = short, branch
alias gco = git checkout
alias ga = git add
alias gaa = git add -A
alias gc = git commit -m
alias gca = git commit --amend
alias gph = git push
alias gpl = git pull
alias gdf = git diff
alias gl = git log --oneline --graph --decorate --all
alias gch = gch
alias grs = git remote show origin

# CMake, projects, etc
alias build-release = cmake --build build --config Release

# Miscellaneous
def dfzf [] { cd (ls ** | where type == "dir" | get name | to text | fzf) }

alias change = nvim $nu.default-config-dir
alias dfzf = dfzf
