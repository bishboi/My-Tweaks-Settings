#!/bin/bash

#installing make for installing packages
sudo apt install make

#installing tweak tools
sudo apt install gnome-tweak-tool

#installing Mc Mojave
git clone https://github.com/vinceliuice/Mojave-gtk-theme  
cd Mojave-gtk-theme
./install.sh
cd .. && rm -rf gnome-tweak-tool

#installing tela icons
git clone https://github.com/vinceliuice/Tela-icon-theme
cd Tela-icon-theme
./install.sh
cd .. && rm -rf gnome-tweak-tool

#installing extensions
sudo apt install gnome-shell-extensions

#installing dash to dock
mv dash-to-dock@micxgx.gmail.com.v64.shell-extension ~/.local/share/gnome-shell/extensions/

#setting wallpaper
gsettings set org.gnome.desktop.background picture-uri wallpaper.jpg
