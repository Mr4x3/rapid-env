rm ~/.bashrc
ln env/.bashrc ~/.bashrc
git config --global user.email "Vivek@crushus.com"
git config --global user.name "Mr4x3"
git config color.ui true
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# Packages Install
sudo apt install ranger
sudo apt install glances
sudo apt install htop
sudo apt install chromium-browser
sudo apt install python3-pip

