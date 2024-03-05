# My Dotfiles
Contains configuration files and install scripts for my system



## Requirements
Install the following or use the install scripts
```
$ pacman -S git stow
```



## Manual Installation
Clone repo to $HOME and using GNU stow to simlink them
```zsh
$ git clone https://github.com/jakew-o-0/dotfiles.git
$ cd dotfiles
$ stow .
```


## Install Script Installation
### Install Desktop
```
$ ./scripts/desktop-install.sh
```
Packages installed
- yay
- hyprland
- hyprpapr
- rofi-lbonn-wayland
- kitty
- ttf-martian-mono-nerd


### Install Workstation:
```
$ ./scripts/workstation-install.sh
```
Packages installed:
- neovim
- tmux 
- zsh
- starship
- fzf
