#!/bin/bash

sudo apt-get update --quiet
sudo apt-get upgrade -y --quiet

sudo apt-get install -y --quiet python
sudo apt-get install -y --quiet python3

# TERMINATOR
sudo apt-get install -y --quiet terminator

# SPOTIFY
snap install spotify

# GPARTED
sudo apt-get -y --quiet install gparted

# Thunderbird Mail
sudo apt-get -y --quiet install thunderbird

#Shutter
sudo apt-get -y --quiet install shutter

#Chrome
sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y --quiet google-chrome-stable

#TeamViewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install -y --quiet ./teamviewer_amd64.deb
sudo rm -f teamviewer_amd64.deb

#IDE
sudo snap install pycharm-community --classic
sudo snap install code --classic


#Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh 
sudo apt install  -y --quiet docker-compose

#Nas
wget https://global.synologydownload.com/download/Utility/SynologyDriveClient/3.4.0-15724/Ubuntu/Installer/synology-drive-client-15724.x86_64.deb?model=DS218j&bays=2&dsm_version=7.2.1&build_number=69057
sudo apt install -y --quiet synology-drive-client-15724.x86_64.deb
sudo rm -rf synology-drive-client-15724.x86_64.deb

exit 0
