#!/bin/sh

# A shell script to download some basic tools for mobile and web development
# You will need the xcode command line tools install before running this script

# Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Git
brew install git

# Cask stuff is symlinked into your Applications folder
brew install cask

# Editors
brew cask install atom

# Communication
brew cask install slack skype

# VMs
brew cask install virtualbox virtualbox-extension-pack vagrant

# Essentials
brew cask install dash google-chrome alfred dropbox google-drive

# Android
brew install android-sdk android-ndk gradle pidcat
brew cask install android-studio

# iOS
brew cask install appcode

# Web
brew cask install webstorm

# Node
brew install node

# Ruby
brew install rbenv
