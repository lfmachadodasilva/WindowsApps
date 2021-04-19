#!/usr/bin/env bash

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

echo "Installing dev packages..."
brew install git
brew install node
# Install Bash 4
brew install bash 
brew install docker
brew install --cask visual-studio-code
brew install --cask drawio
brew install --cask insomnia
brew install --cask iterm2

echo "Installing general packages..."
brew install --cask zoom
brew install --cask google-chrome
brew install --cask spotify

echo "Cleaning up..."
brew cleanup
