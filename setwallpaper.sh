#!/bin/bash
  
wget -O /tmp/wallpaper.jpg https://source.unsplash.com/3840x2160
gsettings set org.gnome.desktop.background picture-uri file:///tmp/wallpaper.jpg
