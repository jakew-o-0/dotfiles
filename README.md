# My Dotfiles
Contains configuration files and install scripts for my system



## Requirements
Install the following or use the install scripts
```bash
$ pacman -S git stow
```



## Manual Installation
Clone repo to $HOME and using GNU stow to simlink them
```bash
git clone https://github.com/jakew-o-0/dotfiles.git
cd dotfiles
stow .
```


## Install Script Installation
```bash
git clone https://github.com/jakew-o-0/dotfiles.git
chmod +x ~/dotfiles/scripts/system-setup.sh
~/dotfiles/scripts/system-setip.sh 
```
### Packages Installed
Deps:
- yay

Mkpkg config deps:
- mold
- pigs
- pigz
- pbzip2
- plzip
- lbzip2

Desktop:
- hyprland
- hyprpapr
- rofi-lbonn-wayland
- kitty
- ttf-martian-mono-nerd

Workstation:
- neovim
- tmux 
- zsh
- starship
- fzf
