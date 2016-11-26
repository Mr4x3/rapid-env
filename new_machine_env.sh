rm ~/.bashrc
ln ~/env/.bashrc ~/.bashrc
git config --global user.email "Vivek@crushus.com"
git config --global user.name "Mr4x3"
git config color.ui true
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.st "status"

# Packages Install
sudo apt install -y ssh python3-pip htop chromium-browser glances tree ranger xclip aptitude tmux indicator-multiload indicator-cpufreq mysql-server
