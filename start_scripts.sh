#!/bin/bash
############################

files="installs.sh links.sh bluetooth_fix.sh"    # list of scripts to run

chmod +x "$files"

for file in $files; do
    echo "Running $file "
    /bin/bash $file
done

# set icons
gsettings set org.gnome.desktop.interface icon-theme 'Numix-Circle'
