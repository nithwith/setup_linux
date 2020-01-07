#!/bin/bash

echo "-- A lancer en sudo --"
sudo apt-get install -y apache2
sudo apt-get install -y php7

echo "-- Lauch python install script --"
bash requirement_odoo.sh

# TERMINATOR
echo "-- Installation de TERMINATOR --"
sudo apt-get install terminator

# ATOM
echo "-- Installation de ATOM --"
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install -y atom

# SPOTIFY
echo "-- Installation de Spotify --"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install -y spotify-client

# GPARTED
echo "-- Installation de GParted --"
sudo apt-get -y install gparted

# Nylas Mail
echo "-- Installation de  Thunderbird --"
sudo apt-get -y install thunderbird

# Star UML
echo "-- Installation de  Star UML --"
wget staruml.io/download/release/v2.8.0/StarUML-v2.8.0-64-bit.deb
sudo dpkg -i StarUML-v2.8.0-64-bit.deb
sudo rm -f StarUML-v2.8.0-64-bit.deb

#Shutter
echo "-- Installation de  Shutter --"
sudo apt-get -y install shutter

# Telegram
#echo "-- Installation de  Star UML --"
#udo add-apt-repository -y ppa:atareao/telegram && sudo apt-get update && sudo apt-get install -y telegram

#Chrome
echo "-- Installation de  Chrome --"
sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y google-chrome-stable

#Ansible
echo "-- Installation de  Ansible --"
sudo apt-get install -y ansible

#Filezilla
echo "-- Installation de  Filezilla --"
sudo apt-get install -y filezilla

#TeamViewer
echo "-- Installation de  TeamViewer --"
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install -y ./teamviewer_amd64.deb
sudo rm -f teamviewer_amd64.deb


exit 0
