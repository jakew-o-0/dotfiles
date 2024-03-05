#bin/bash

# installing yay
pacman -S --needed --noconfirm git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -Y --noconfirm --gendb
yay -Syu --noconfirm --devel --save

# installing packages for PKGBUILD config
yay -S --noconfirm mold pigz pbzip2 lbzip2 plzip
mv ~/linux_configs/arch-sys-config/makepkg.conf /etc/makepkg.conf

# installing packages
yay -S --noconfirm hyprland hyprpaper rofi-wayland-only-git kitty ttf-martian-mono-nerd
