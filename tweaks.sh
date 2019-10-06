#!/bin/bash

#installing tweak tools
echo "-------Installing tweak-tools---------"
sudo apt install gnome-tweak-tool && echo "-------tweak-tools installed-------"

#installing Mc Mojave
echo "-------Installing McMojave theme---------"
git clone https://github.com/vinceliuice/Mojave-gtk-theme  
cd Mojave-gtk-theme
./install.sh && wcho "-------Installed McMojave theme-----------"
cd .. && rm -rf gnome-tweak-tool

#installing tela icons
echo "-------Installing Tela Icons---------"
git clone https://github.com/vinceliuice/Tela-icon-theme
cd Tela-icon-theme
./install.sh && echo "--------Installed Tela Icons----------"
cd .. && rm -rf gnome-tweak-tool

#installing extensions
echo "-------Installing Shell-Extensions---------"
sudo apt install gnome-shell-extensions && echo "---------Installed Shell-Extensions--------"

#installing dash to dock
echo "-------Installing dash-to-dock---------"
mv dash-to-dock@micxgx.gmail.com ~/.local/share/gnome-shell/extensions/

#setting wallpaper
echo "-------Setting Wallpaper---------"
mv wallpaper.jpg ~/Pictures/
gsettings set org.gnome.desktop.background picture-uri ~/Pictures/wallpaper.jpg
