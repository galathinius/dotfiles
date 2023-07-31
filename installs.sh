#!/bin/bash
############################

apt-get update

# install some packages
apt-get install -y zsh python3-pip git power-calibrate numix-icon-theme-circle numix-icon-theme dbus-x11

# install gnome tweaks
add-apt-repository universe
apt install -y gnome-tweak

git config --global user.name "galathinius"
git config --global user.email "anisoara.ionela@gmail.com"



# install miniconda
# the long form of the flag --directory-prefix= creates ~ as a subfolder in the curent directory
wget -P ~ https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

chmod +x ~/Miniconda3-latest-Linux-x86_64.sh

/bin/bash ~/Miniconda3-latest-Linux-x86_64.sh
# if zsh
if [ "$SHELL" = /usr/bin/zsh ]
then
  /home/"$USER"/miniconda3/bin/conda init zsh
fi



# install vscode
snap install --classic code


# install docker
apt-get update

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update

apt-get install -y docker-ce docker-ce-cli containerd.io


# intall docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

# install oh-my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"