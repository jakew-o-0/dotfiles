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

### Install Stcript
```
$ ./scripts/InstallWorkflow.sh
$ ./scripts/InstallDesktop.sh
```

