#! /bin/bash

clear

sudo apt update
sudo apt purge --auto-remove xfce4-appmenu-plugin vala-panel-appmenu appmenu* -y --no-install-recommends --no-install-suggests 
xfconf-query -c xsettings -p /Gtk/ShellShowsMenubar -n -t bool -s false
xfconf-query -c xsettings -p /Gtk/ShellShowsAppmenu -n -t bool -s false
sudo rm -rf /etc/X11/Xsession.d/52appmenu-gtk-module_add-to-gtk-module
echo "Process has completed."
read -n 1 -s -r -p "Press any key to continue..."
