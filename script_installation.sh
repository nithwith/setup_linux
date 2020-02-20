#!/bin/bash

sudo apt-get update --quiet
sudo apt-get upgrade -y --quiet

#standard
sudo apt-get install -y --quiet apache2
sudo apt-get install -y --quiet php7

sudo apt-get install -y --quiet python
sudo pip install -r requirements.txt

sudo apt-get install -y --quiet python3
sudo pip3 install -r requirements.txt

# TERMINATOR
sudo apt-get install terminator

# ATOM
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install -y --quiet atom

# SPOTIFY
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y --quiet spotify-client

# GPARTED
sudo apt-get -y --quiet install gparted

# Thunderbird Mail
sudo apt-get -y --quiet install thunderbird

# Star UML
wget "http://staruml.io/download/releases/StarUML-3.2.0.AppImage"
sudo chmod a+x StarUML-3.2.0.AppImage
sudo ./StarUML-3.2.0.AppImage -- install
sudo rm -f StarUML-3.2.0.AppImage

#Shutter
sudo apt-get -y --quiet install shutter

# Telegram
#echo "-- Installation de   --"
#udo add-apt-repository -y --quiet ppa:atareao/telegram && sudo apt-get update && sudo apt-get install -y --quiet telegram

#Chrome
sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y --quiet google-chrome-stable

#Ansible
sudo apt-get install -y --quiet ansible

#Filezilla
echo "-- Installation de  Filezilla --"
sudo apt-get install -y --quiet filezilla

#TeamViewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install -y --quiet ./teamviewer_amd64.deb
sudo rm -f teamviewer_amd64.deb

#Node
wget -qO- https://deb.nodesource.com/setup | bash -
apt-get install -y --quiet nodejs

apt-get install -y --quiet npm
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo apt-get install nodejs nodejs-legacy node-less
sudo apt-get install npm
#Odoo dependency
sudo npm install -g less
sudo npm install -g less-plugin-clean-css
sudo ln -s /usr/local/bin/lessc /usr/bin/lessc
sudo ln -s /usr/bin/nodejs /usr/bin/node

sudo npm install -g less

#IDE
sudo apt install -y --quiet snapd snapd-xdg-open
sudo snap install pycharm-professional --classic
sudo snap install intellij-professional --classic

sudo apt-add-repository ppa:maarten-fonville/android-studio
sudo apt-get update -y
sudo apt-get install -y --quiet android-studio

#Xivo
wget http://mirror.xivo.solutions/iso/archives/xivo-2018.05.07/xivoclient-2018.05.07-amd64.deb
sudo apt install -y --quiet ./xivoclient-2018.05.07-amd64.deb
sudo rm -f xivoclient-2018.05.07-amd64.deb

#Docker
sudo apt install -y --quiet docker
sudo apt install -y --quiet docker-compose
echo "Changer fichier /etc/docker/daemon.json with {'data-root': '/home/theo/docker',}"

#keepassxc
sudo snap install keepassxc

#Nas
wget https://global.download.synology.com/download/Tools/SynologyDriveClient/2.0.1-11061/Ubuntu/Installer/x86_64/synology-drive-client-11061.x86_64.deb
sudo apt install -y --quiet synology-drive-client-11061.x86_64.deb
sudo rm -rf synology-drive-client-11061.x86_64.deb
echo "Config NAS"

#Baobab
sudo apt install -y --quiet

bash requirement_odoo.sh

exit 0
