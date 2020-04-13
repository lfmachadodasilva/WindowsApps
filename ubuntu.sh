#!/bin/bash

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Update repository ##

sudo apt update && 

## Install packages and app from ubuntu ##

sudo apt install python3 python-pip git build-essential libssl-dev checkinstall chromium-browser -y &&

## install snap packages ##

sudo snap install slack --classic &&  
sudo snap install skype --classic &&  
sudo snap install code --classic &&  
sudo snap install node --classic &&
sudo snap install dotnet-sdk --classic &&
sudo snap install insomnia &&  
sudo snap install spotify &&

## update system ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

# configuration #

npm install npm@latest -g &&

git config --global user.name "Luiz Felipe Machado da Silva" &&
git config --global user.email "lfmachadodasilva@gmail.com" &&

sudo snap alias dotnet-sdk.dotnet dotnet &&

code --install-extension ms-dotnettools.csharp &&
code --install-extension ms-vscode.vscode-typescript-tslint-plugin &&
code --install-extension dbaeumer.vscode-eslint &&
code --install-extension eamodio.gitlens &&
code --install-extension esbenp.prettier-vscode && 
code --install-extension msjsdiag.debugger-for-chrome &&
code --install-extension vscode-icons-team.vscode-icons &&
code --install-extension visualstudioexptteam.vscodeintellicode &&

echo "end"
