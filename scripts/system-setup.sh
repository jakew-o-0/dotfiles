#/bin/bash

# installing/setting-up yay
pacman -S --needed --noconfirm git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -Y --noconfirm --gendb
yay -Syu --noconfirm --devel --save


# PKGBUILD config
yay -S --noconfirm mold pigz pbzip2 lbzip2 plzip
sudo mv ~/linux_configs/arch-sys-config/makepkg.conf /etc/makepkg.conf






# install
read -sp "Install Desktop [y/n]: " installDesktop
read -sp "Install Workstation [y/n]: " installWorkstation


if [[ $installDesktop -eq "y" ]]; then
    yay -S --noconfirm hyprland hyprpaper rofi-lbonn-wayland kitty ttf-martian-mono-nerd
fi

if [[ $installWorkstation -eq "y" ]]; then
    yay -S --noconfirm neovim tmux zsh starship fzf stow
    chsh -s /usr/bin/zsh jake

    # oh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    rm ~/.zshrc

    # tpm for tmux
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

    stow .
fi
