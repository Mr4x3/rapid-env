
##############--Mr.4x3 Alias--#############
# Exports
export EDITOR=vim

# Python Related Alias
alias py='python3'
alias python='python3'
alias pip='pip3'
alias bpython='bpython3'

# Git Alias
alias gi='git init'
alias gc='git commit'
alias gp='git push'
alias gf='git fetch && git rebase'
alias gr='git rebase'
alias gs='git status'
alias gl='git lg'
alias gd='git diff'

# Projects Alias
alias spvr='~/Documents/django-projects/sportsvitae/manage.py runserver 8001'
alias ssr='~/Documents/django-projects/schoolsmart/manage.py runserver 8002'
alias b4ir='~/Documents/django-projects/buy4industry/manage.py runserver 8003'
alias lmr='~/Documents/django-projects/little_millennium/manage.py runserver 8004'
alias yumr='~/Documents/django-projects/yum_tiffin/manage.py runserver 8006'
alias lpr='~/Documents/django-projects/land_parcel/manage.py runserver 8007'
alias vbr='~/Documents/django-projects/apis_vbrand/manage.py runserver 8008'
alias rdr='~/Documents/django-projects/raktdaan/manage.py runserver 8009'

# Linux Alias
alias bye='sudo shutdown -h now'
alias install='sudo apt -y install'
alias remove='sudo apt -y remove'
alias update='sudo apt -y update'
alias upgrade='sudo apt -y update && sudo apt -y upgrade'
alias clean='sudo apt-get autoclean && sudo apt-get autoremove'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Empty the trash folder that is created when you delete things as root
alias root_trash='sudo bash -c "exec rm -r /root/.local/share/Trash/{files,info}/*"'

# Django Alias
alias csu='python3 manage.py createsuperuser'
alias run='python3 manage.py runserver 8888'
alias mm='python3 manage.py makemigrations'
alias migrate='python3 manage.py migrate'
alias shell='python3 manage.py shell'

# Other Alias
alias top='top -o cpu'
alias ..='cd ..'
alias dev='cd ~/Documents/'
alias l='ls -CF'
alias vim='nvim'
alias v='nvim'
alias v.='nvim .'

# VENV Wrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Documents/django-projects/
export VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'
source /usr/local/bin/virtualenvwrapper.sh
alias mkproject='mkproject --python=/usr/bin/python3'

################Commands###################
#cd ~/Documents

################Exports####################
today=$(date +"%b-%d-%Y [%H:%M:%S]")

#################Best Prompt Yet############
##
# Configure colors, if available.
c_reset='\[\e[0m\]'
c_user='\[\e[1;33m\]'
c_path='\[\e[0;33m\]'
c_git_clean='\[\e[0;36m\]'
c_git_dirty='\[\e[0;35m\]'

# Function to assemble the Git parsingart of our prompt.
git_prompt ()
{
  if ! git rev-parse --git-dir > /dev/null 2>&1; then
    return 0
  fi

  git_branch=$(git branch 2>/dev/null | sed -n '/^\*/s/^\* //p')

  if git diff --quiet 2>/dev/null >&2; then
    status="✔"
  else
    status="✘"
  fi

  # echo "[$git_color $git_branch ${c_reset}]"
  echo "[$status $git_branch]"
}

# For Showing Virtual Env
virtualenv_info (){
    # Get Virtual Env
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
    else
        # In case you don't have one activated
        venv='Default | Environment'
    fi
    [[ -n "$venv" ]] && echo "$venv"
}

# Disable Virtual Env Prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1

#local VENV="\$(virtualenv_info)";
# PROMPT_COMMAND='PS1="${c_user}\u${c_reset}@${c_user}\h${c_reset}:${c_path}\w${c_reset}$(git_prompt)\$ "'
PS2="\[\033[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h'; fi)\[\033[0;37m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;37m\]]-\e[0;31m\$(date +"[%H:%M:%S]") \e[1;37m\$(git_prompt)\e[0;31m 🢜🢜🢜🢂\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]"

PS1="\[\033[1;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[1;31m\]\342\234\227\[\033[1;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[1;30m\]\u\[\033[1;30m\]@\[\033[1;30m\]\h'; fi)\[\033[1;37m\]]\342\224\200[\[\033[0;32m\]\w\[\033[1;37m\]]-\[\033[1;34m\]\$(date +"[%H:%M:%S]")\e[1;37m\$(git_prompt)\[\033[1;34m\]🢜🢜🢜🢂 \n\[\033[0;37m\]\342\224\224\342\224\200\[\033[1;37m\][\[\033[1;33m\]\$(virtualenv_info)\[\033[1;37m\]]--->>\[\033[0;36m\]"
# This shows a asterisk * whenever there are non-committed changes around. It also shows a plus + for changes which are staged but not yet commited (git add)
# export GIT_PS1_SHOWDIRTYSTATE=1
# parse_git_branch() {
#      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }
# export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
#_______________________________________________________________________________________________________
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# if [ "$color_prompt" = yes ]; then
#     PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# else
#     PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
# fi

unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
