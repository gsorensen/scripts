#!/usr/bin/env bash

# Script to handle everything to setup after a fresh install of 
# Linux, more specifically Mint. Future improvements could be to
# generalise script to use package manager as an input variable

# Prerequisite: Install git. (If you clone it, otherwise it will be installed here)
# Run script with sudo privilege from home diretory

PACKAGE_MANAGER="apt"

# Updating any packages 
echo "Updating and upgrading packages..."
sudo $PACKAGE_MANAGER update && sudo $PACKAGE_MANAGER upgrade

# Installing desired programs
echo "Installing programs..."
sudo $PACKAGE_MANAGER git plank 

# Installing the flat-remix theme
# Installation script found at dev's github
cd /tmp && rm -rf flat-remix &&
git clone https://github.com/daniruiz/flat-remix &&
mkdir -p ~/.icons && cp -r flat-remix/Flat-Remix* ~/.icons/ &&
gsettings set org.gnome.desktop.interface icon-theme "Flat-Remix"
cd ..

# Installing the arc theme. 
# Note that we're cloning my forked repo of Erik Dubois, where the default 
# accent colour has been changed to the one I am using
cd /tmp && rm -rf Arc-Theme-Colora &&
git clone https://github.com/gsorensen/Arc-Theme-Colora &&
cd Arc-Theme-Colora && sh installation1.sh &&
sh installation2.sh && sh installation3.sh && 
sh installation4.sh && sh installation5.sh &&
sh installation6.sh && sh installation7.sh &&
cd ..
