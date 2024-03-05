#bin/bash

yay -S neovim tmux zsh starship fzf
chsh -s /usr/bin/zsh jake

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc

stow .
