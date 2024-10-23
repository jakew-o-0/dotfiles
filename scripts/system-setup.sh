#/bin/bash

# installing/setting-up yay
sudo pacman -S --needed --noconfirm git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -Y --noconfirm --gendb
yay -Syu --noconfirm --devel --save
cd ~

# PKGBUILD config
# yay -S --noconfirm mold pigz pbzip2 lbzip2 plzip
# sudo mv ~/.dotfiles/arch-sys-config/makepkg.conf /etc/makepkg.conf

# install system 
yay -S --noconfirm hyprland hyprpaper rofi-lbonn-wayland kitty ttf-jetbrains-mono-nerd papirus-icon-theme bibata-cursor-theme-bin neovim tmux zsh fzf ripgrep stow eza dust duf bat
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
chsh -s /usr/bin/zsh jake
cd ~/.dotfiles
stow .
