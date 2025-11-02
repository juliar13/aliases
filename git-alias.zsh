# git add
alias ga='git add'

# git branch
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'

# git commit
alias gcm='git commit -m'
alias gcam='git commit --amend -m'

# git diff
alias gd='git diff'
alias gdc='git diff --cached'

# git fetch
alias gfa='git fetch --all'

# git log
alias gl='git log'
alias gl1="git log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=iso"

# git reset
alias grhh='git reset --hard HEAD'
alias grsh='git reset --soft HEAD'

# git restore
alias grs='git restore --staged'

# git remote
alias grv='git remote -v'

# git push
alias gpd='git push -d'

# git status
alias gs='git status'

# git switch
alias gsw='git switch'
alias gsw-='git switch -'
alias gswc='git switch -c'
alias gswd='git switch develop'
alias gswm='git switch main'
alias gswr='git switch release'

# git tag
alias gtam='git tag -am'
alias gtn='git tag -n'

# ローカルとoriginにあるブランチをそれぞれ削除する
function git-delete-branch() {
  git branch -d $1
  git push -d origin $1
}