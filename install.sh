#!/bin/bash

yes | LC_ALL=en_US.UTF-8 sudo pacman -S onboard
yes | LC_ALL=en_US.UTF-8 sudo pacman -S antimicrox

sed -i "s/XXXXX/$HOME/g" desktop.gamecontroller.amgp

sudo cp "desktop.gamecontroller.amgp" "$HOME/AntiMicro/desktop.gamecontroller.amgp"
sudo chmod +x "$HOME/AntiMicro/desktop.gamecontroller.amgp"
sudo cp "toggleOnboard.sh" "~/AntiMicro/toggleOnboard.sh"
sudo chmod +x "$HOME/AntiMicro/toggleOnboard.sh"

sudo cp "controllerAutostart.sh" "$HOME/.config/autostart/controllerAutostart.sh"
sudo chmod +x "$HOME/.config/autostart/controllerAutostart.sh"

dconf load / < dconf.ini

antimicrox
onboard
