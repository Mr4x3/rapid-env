#------------------------------------------------------------------------------#
#------------------------------------------------------------------------------#
# File To Build A New System [Debian] --Author: Mr.4x3-[mr4x3@crushus.com]-----#
#------------------------------------------------------------------------------#
#------------------------------------------------------------------------------#

rm ~/.bashrc
# Present Directry
# May Use $PWD For Back Use $OLDPWD
present_directry=$(pwd)
ln -s "$present_directry/bashrc" ~/.bashrc
ln -s "$PWD/config/nvim/" ~/.config/
ln -s "$PWD/config/audacious/" ~/.config/
ln -s "$PWD/config/puddletag/" ~/.config/
ln -s "$PWD/config/transmission/" ~/.config/
ln -s "$PWD/gitconfig" ~/.gitconfig

# For N Vim Icons
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20for%20Powerline%20Nerd%20Font%20Complete.otf

# Git Configurations
# git config --global user.email "Vivek@crushus.com"
# git config --global user.name "Mr4x3"
# git config --global color.ui true
# git config --global push.default simple
# git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
# git config --global alias.st "status"
# git config --global core.excludesfile $present_directry.gitignore

# PPA If Not Portable
# sudo add-apt-repository ppa:indicator-multiload/stable-daily
# sudo apt install -y indicator-multiload indicator-cpufreq
# Update System
# sudo pip2 install --upgrade --force-reinstall neovim --user

# PPA'S
sudo add-apt-repository ppa:neovim-ppa/unstable
# Update And Upgrade
sudo apt -y update && sudo apt -y upgrade

# Packages Install
sudo apt install -y ssh python3-pip htop chromium-browser glances tree ranger xclip aptitude tmux mysql-server dtrx whois tightvncserver nmap transmission-daemon vim-nox exuberant-ctags build-essential cmake python-dev sshpass neovim thunar puddletag audacious pdfmod gimp ubuntu-restricted-extras xfca soundconverter pepperflashplugin-nonfree adobe-flashplugin nodejs-legacy

# Update Pip
sudo pip3 install --upgrade pip
sudo pip install virtualenvwrapper
