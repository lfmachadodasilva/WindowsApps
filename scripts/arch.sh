#!/bin/bash

#----------------------------
#update system & install apps
#----------------------------

#is equivalent to apt-get update && apt-get upgrade.
pacman -Syu

#install all needed software
pacman -S \
	gcc \
	vim \
	docker docker-compose \
	chromium \
	pgadmin4 \
	nodejs npm \
	go \
	deno \

#install alternative to pacman
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
systemctl enable --now snapd.socket
ln -s /var/lib/snapd/snap /snap

#install vscode instead of code OSS (open source alternative)
snap install code --classic
snap install insomnia --classic
snap install dotnet-sdk --classic

#rename dotnet
sudo snap alias dotnet-sdk.dotnet dotnet

code --install-extension esbenp.prettier-vscode
code --install-extension vscode-icons-team.vscode-icons
code --install-extension dbaeumer.vscode-eslint
code --install-extension denoland.vscode-deno
code --install-extension ms-dotnettools.csharp
code --install-extension golang.go
code --install-extension denoland.vscode-deno

#-------------
#configure git
#-------------
git config --global user.name "Luiz Felipe" 
git config --global user.email "lfmachadodasilva@gmail.com"
