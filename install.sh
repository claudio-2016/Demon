#!/bin/bash

sudo apt install -y ufw && ufw enable
clear
sudo apt install -y xorg
clear
sudo apt install -y openbox obconf rofi 
clear
sudo apt -y install fonts-dejavu-extra fonts-dejavu xfce4-terminal 
clear
sudo apt -y install thunar iceweasel iceweasel-l10n-es-ar alsa-utils 
clear
sudo apt install -y lxappearance lxappearance-obconf numix-gtk-theme numix-icon-theme
clear
sudo apt install -y lightdm lightdm-gtk-greeter
clear
cp -R .config  ~/
echo 'exec openbox-session' > ~/.xinitrc
clear
echo 'El proceso ha finalizado, si se encuentra dentro de VirtualBox, por favor corra el script vBox.sh como root. Para tener soperte completo dentro de la virtual machine. Recuerde hacer ejecutable el script con (chmod +x vBox.sh)'
