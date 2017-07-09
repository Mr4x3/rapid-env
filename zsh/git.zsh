# Git Aliases
alias ga='git add'
alias gb='git branch'
alias gl='git lg'
alias gp='git push'
alias gf='git fetch && git rebase'
alias gd='git diff'
alias gdc='git diff --cached'
alias gs='git status'
alias gss='git stash save'
alias gsp='git stash pop'
alias gmv='git mv'
alias grm='git rm'
alias grn='git-rename'
alias glog="git log"

# alias git-amend='git commit --amend -C HEAD'
alias git-undo='git reset --soft HEAD~1'
alias git-count='git shortlog -sn'
alias git-undopush="git push -f origin HEAD^:master"

# Git Root
alias gr='[ ! -z `git rev-parse --show-cdup` ] && cd `git rev-parse --show-cdup || pwd`'

alias sub-pull='git submodule foreach git pull origin master'

function give-credit() {
    git commit --amend --author $1 <$2> -C HEAD
}

# A Simple Git Rename File Function
# Git Does Not Track Case-Sensitive Changes To A Filename.
function git-rename() {
    git mv $1 "${2}-"
    git mv "${2}-" $2
}

function g() {
    if [[ $# > 0 ]]; then
        # if there are arguments, send them to git
        git $@
    else
        # otherwise, run git status
        git s
    fi
}
