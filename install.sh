#------------------------------------------------------------------------------#
#------------------------------------------------------------------------------#
# File To Build A New System [Debian] --Author: Mr.4x3-[mr4x3@crushus.com]-----#
#------------------------------------------------------------------------------#
#------------------------------------------------------------------------------#

rm ~/.bashrc
# Present Directry
present_directry=./
ln -s bashrc ~/.bashrc

# Git Configurations
git config --global user.email "Vivek@crushus.com"
git config --global user.name "Mr4x3"
git config --global color.ui true
git config --global push.default simple
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.st "status"
git config --global core.excludesfile $present_directry.gitignore

# PPA If Not Portable
# sudo add-apt-repository ppa:indicator-multiload/stable-daily
# sudo apt install -y indicator-multiload indicator-cpufreq
# sudo add-apt-repository ppa:neovim-ppa/unstable
# sudo apt-get install neovim
# Update System
# ln -s Documents/rapid-env/config/nvim/ ~/.config/nvim
# sudo pip2 install --upgrade --force-reinstall neovim --user
sudo apt -y update && sudo apt -y upgrade

# Packages Install
sudo apt install -y ssh python3-pip htop chromium-browser glances tree ranger xclip aptitude tmux mysql-server dtrx whois tightvncserver nmap transmission-daemon vim-nox exuberant-ctags

# Update Pip
sudo pip3 install --upgrade pip
sudo pip install virtualenvwrapper
