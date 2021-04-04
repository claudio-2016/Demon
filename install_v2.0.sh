#!/bin/bash

clear && echo "PREPARANDO PARA INSTALACION DE: xorg-server-source " && sleep 5
sudo apt install -y xorg-server-source

clear && echo "PREPARANDO PARA INSTALACION DE: xinit " && sleep 5
sudo apt install -y xinit

clear && echo "PREPARANDO PARA INSTALACION DE: poenbox, obconf, rofi, tint2 " && sleep 5
sudo apt -y install openbox obconf rofi tint2

clear && echo "PREPARANDO PARA INSTALACION DE: poenbox, obconf, rofi, tint2 " && sleep 5
sudo apt -y install fonts-dejavu-extra fonts-dejavu xfce4-terminal htop

clear && echo "PREPARANDO PARA INSTALACION DE: thunar, firefox, alsa-utils, net-tools " && sleep 5
sudo apt -y install thunar firefox-esr firefox-esr-l10n-es-ar alsa-utils net-tools

clear && echo "PREPARANDO PARA INSTALACION DE: lxappearance, lxappearance-obconf, numix, network-manager-gnome " && sleep 5
sudo apt -y install lxappearance lxappearance-obconf numix-* network-manager-gnome

clear && echo "PREPARANDO PARA INSTALACION DE: mate-power-manager, volumeicon-alsa, slim " && sleep 5
sudo apt -y install mate-power-manager volumeicon-alsa slim


clear && echo "AGUARDE UN INSTANTE, CONFIGURANDO SISTEMA.. " && sleep 5

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

clear && echo "INSTALACION FINALIZADA "

