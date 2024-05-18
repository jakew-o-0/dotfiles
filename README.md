# Dotfiles
Contains configuration files and install scripts for my system

## Manual Installation
Clone repo to $HOME and using GNU stow to simlink them
```bash
pacman -S git stow
git clone https://github.com/jakew-o-0/dotfiles.git
cd dotfiles
stow .
```

## Install Script Installation
```bash
git clone https://github.com/jakew-o-0/dotfiles.git
chmod +x ~/dotfiles/scripts/system-setup.sh
~/dotfiles/scripts/system-setup.sh 
```
### Packages Installed
- yay
- mold
- pigz
- pbzip2
- plzip
- lbzip2
- hyprland
- hyprpapr
- rofi-lbonn-wayland
- kitty
- ttf-martian-mono-nerd
- neovim && lazy && plugins
- tmux && tpm && plugins
- zsh  && zinit && plugins
- fzf
- ripgrep
- stow
