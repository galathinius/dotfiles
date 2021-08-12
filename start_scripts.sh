#!/bin/bash
############################ 

files="installs.sh bluetooth_fix.sh links.sh"    # list of scripts to run

for file in $files; do
    echo "Running $file "
    /bin/bash $file
done

# set icons
gsettings set org.gnome.desktop.interface icon-theme 'Numix-Circle'
