#! /bin/bash

clear

sudo apt update
sudo apt-fast install xfce4-appmenu-plugin vala-panel-appmenu appmenu* -y --no-install-recommends --no-install-suggests 
xfconf-query -c xsettings -p /Gtk/ShellShowsMenubar -n -t bool -s true
xfconf-query -c xsettings -p /Gtk/ShellShowsAppmenu -n -t bool -s true
sudo cp 52appmenu-gtk-module_add-to-gtk-modules /etc/X11/Xsession.d
clear
echo "Process has completed."
read -n 1 -s -r -p "Press any key to continue..."
