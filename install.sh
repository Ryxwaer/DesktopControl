#!/bin/bash

yes | LC_ALL=en_US.UTF-8 sudo pacman -S onboard
yes | LC_ALL=en_US.UTF-8 sudo pacman -S xbindkeys
yes | LC_ALL=en_US.UTF-8 sudo pacman -S antimicrox

sudo cp "controllerAutostart.sh" "~/.config/autostart/controllerAutostart.sh"
sudo chmod +x "~/.config/autostart/controllerAutostart.sh"

#xbindkeys --defaults > ~/.xbindkeysrc
sudo cp ".xbindkeysrc" "~/.xbindkeysrc"

dconf load / < dconf.ini

antimicrox
xbindkeys
onboard
