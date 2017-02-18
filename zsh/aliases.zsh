##############--Mr.4x3 Alias--#############
# Exports
export EDITOR=vim

# Python Related Alias
alias py='python3'
alias python='python3'
alias pip='pip3'
alias bpython='bpython3'

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
alias dev='cd ~/Documents/django-projects'
alias l='ls -CF'
alias vim='nvim'
alias v='nvim'
alias v.='nvim .'

# Exports Environments
export ANDROID_HOME=$HOME/.Android
export PATH=${PATH}:$HOME/.Android/platform-tools:$HOME/.Android/tools:$HOME/.Android/build-tools/25.0.2/

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


# reload zsh config
alias reload!='RELOAD=1 source ~/.zshrc'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi

# Filesystem aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias l="ls -lah ${colorflag}"
alias la="ls -AF ${colorflag}"
alias ll="ls -lFh ${colorflag}"
alias lld="ls -l | grep ^d"
alias rmf="rm -rf"

# Helpers
alias grep='grep --color=auto'
alias df='df -h' # disk free, in Gigabytes, not bytes
alias du='du -h -c' # calculate disk usage for a folder

# Applications
#alias ios='open -a /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Trim new lines and copy to clipboard
alias trimcopy="tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# File size
alias fs="stat -f \"%z bytes\""

# ROT13-encode text. Works for decoding, too! ;)
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

# Empty the Trash on all mounted volumes and the main HDD
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m '$method'"
done

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 10'"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"
