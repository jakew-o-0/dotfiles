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
yay -S --noconfirm mold pigz pbzip2 lbzip2 plzip
sudo mv ~/dotfiles/arch-sys-config/makepkg.conf /etc/makepkg.conf


# install packages and setup config files
read -sp "Install Desktop [y/n]: " installDesktop
read -sp "Install Workstation [y/n]: " installWorkstation

if [[ $installDesktop -eq "y" ]]; then
    yay -S --noconfirm hyprland hyprpaper rofi-lbonn-wayland kitty ttf-jetbrains-mono-nerd
fi

if [[ $installWorkstation -eq "y" ]]; then
    yay -S --noconfirm neovim tmux zsh fzf ripgrep stow
    chsh -s /usr/bin/zsh jake
    # tpm for tmux
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    cd ~/dotfiles
    stow .
fi
