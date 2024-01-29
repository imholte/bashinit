#!/bin/bash

apt update
apt install nala

/usr/local/share/fonts/
fc-cache -fv

# Install Nerd Font
cd /tmp
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/IosevkaTerm.tar.xz
tar -xvf IosevkaTerm.tar.xz -C /usr/local/share/fonts/

#install eza
nala install -y gpg
mkdir -p /etc/apt/keyrings
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
nala update
nala install -y eza

#install vivid
wget "https://github.com/sharkdp/vivid/releases/download/v0.8.0/vivid_0.8.0_amd64.deb"
dpkg -i vivid_0.8.0_amd64.deb
