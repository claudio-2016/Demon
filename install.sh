#!/bin/bash

#apt install -y ufw && ufw enable
#clear
#apt install -y xorg
clear
sudo apt install -y openbox obconf rofi 
clear
sudo apt -y install fonts-dejavu-extra fonts-dejavu xfce4-terminal 
clear
sudo apt -y install thunar iceweasel iceweasel-l10n-es-ar alsa-utils 
clear
sudo add-apt-repository ppa:numix/ppa
clear
sudo apt update
clear
sudo apt install -y lxappearance lxappearance-obconf numix-*
clear
cp -R ~/Git/Demon/.config  ~/
echo 'exec openbox-session' > ~/.xinitrc
clear
echo 'El proceso ha finalizado, si se encuentra dentro de VirtualBox, por favor corra el script vBox.sh como root. Para tener soperte completo dentro de la virtual machine. Recuerde hacer ejecutable el script con (chmod +x vBox.sh)
