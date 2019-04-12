#!/bin/bash

sudo apt install -y ufw && ufw enable
clear
sudo apt install -y xorg
clear
sudo apt install -y openbox obconf rofi tint2
clear
sudo apt -y install fonts-dejavu-extra fonts-dejavu xfce4-terminal 
clear
sudo apt -y install thunar iceweasel iceweasel-l10n-es-ar alsa-utils 
clear
sudo apt install -y lxappearance lxappearance-obconf numix-gtk-theme numix-icon-theme slim
clear
cp -R .config  ~/
echo 'exec openbox-session' > ~/.xinitrc
clear
echo -e 'El proceso ha finalizado, si se encuentra dentro de VirtualBox, por favor corra el script vBox.sh como root. 
\nPara tener soperte completo dentro de la virtual machine. \nRecuerde hacer ejecutable el script con (chmod +x vBox.sh)'
