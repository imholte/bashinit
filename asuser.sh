#!/bin/bash

# Check if the current user is root
if [ "$(id -u)" -eq 0 ]; then
    # If the user is root, run the program directly
    #curl -sSL https://raw.githubusercontent.com/imholte/bashinit/main/asroot.sh | bash
else
    # If the user is not root, run the program using sudo
    #curl -sSL https://raw.githubusercontent.com/imholte/bashinit/main/asroot.sh | sudo bash
fi

lines_to_append='
#eval `dircolors ~/.dir_colors/dircolors`
alias ls="eza --icons -a"
export LS_COLORS="reset:$(vivid generate dracula)"
#export EZA_COLORS="reset"
'
# Füge die Zeilen ans Ende der .bashrc hinzu
echo "$lines_to_append" >> ~/.bashrc


#mc theme
mkdir -p ~/.local/share/mc/skins; 
wget -P ~/.local/share/mc/skins https://raw.githubusercontent.com/dracula/midnight-commander/master/skins/dracula256.ini; 
wget -P ~/.local/share/mc/skins https://raw.githubusercontent.com/dracula/midnight-commander/master/skins/dracula.ini; 
sed -i 's/skin=default/skin=dracula256/g' ~/.config/mc/ini
