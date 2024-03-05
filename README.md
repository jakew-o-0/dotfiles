# My Dotfiles
Contains configuration files and install scripts for my system


## Requirements
Install the following or use the install scripts
```
$ pacman -S git stow
```



## Installation
Clone repo to $HOME
```
$ git clone https://github.com/jakew-o-0/dotfiles.git
$ cd dotfiles
```



### Manual
Use GNU stow to create simlinks
```
$ stow .
```


### Install Scripts
Install Desktop
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


Install Workstation:
```
$ ./scripts/workstation-install.sh
```
Packages installed:
- neovim
- tmux 
- zsh
- starship
- fzf
