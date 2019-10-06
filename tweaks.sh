#!/bin/bash

#installing tweak tools
sudo apt-get build-dep gnome-tweak-tool
git clone git://git.gnome.org/gnome-tweak-tool
cd gnome-tweak-tool
./autogen.sh
make
make install
cd .. && rm -rf gnome-tweak-tool

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
git clone https://github.com/micheleg/dash-to-dock.git
cd dash-to-dock
make
make install
cd .. && rm -rf dash-to-dock
