#!/bin/bash

## Instalacion de paquetes basicos
sudo apt -y install ufw 
sudo ufw enable
clear
sudo apt -y install xorg
clear
sudo apt -y install openbox obconf rofi tint2
clear
sudo apt -y install fonts-dejavu-extra fonts-dejavu xfce4-terminal htop
clear
sudo apt -y install thunar iceweasel iceweasel-l10n-es-ar alsa-utils net-tools
clear
sudo apt -y install lxappearance lxappearance-obconf numix-gtk-theme numix-icon-theme network-manager-gnome
clear
sudo apt -y install mate-power-manager volumeicon-alsa mpv nmap
clear


## Configuracion basica para OpenBox
cp -R .config  ~/
echo 'exec openbox-session' > ~/.xinitrc
clear


## Modificacion del tiempo de Grub
sudo cp /etc/default/grub /etc/default/grub.original
sudo sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/g' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
clear


## Se elminan las ultimas lineas del archivo interfaces para que se pueda configurar o conectarse a redes wifi, etc.
sudo cp /etc/network/interfaces /etc/network/interfaces.original
sudo sed -i '10,12d' /etc/network/interfaces


## Creacion de alias.
echo "alias iniciar='startx'" >> ~/.bashrc
echo "alias reiniciar='sudo reboot'" >> ~/.bashrc
echo "alias apagar='sudo poweroff'" >> ~/.bashrc

echo -e 'El proceso ha finalizado, ahora debe reiniciar su pc con el comando 'sudo reboot'.\n Si se encuentra dentro de VirtualBox, por favor \ncorra el script vBox.sh como usuario root. Para tener soperte completo dentro de la virtual machine. \nRecuerde hacer ejecutable el script con (chmod +x vBox.sh)'
