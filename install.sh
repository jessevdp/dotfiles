#!/bin/bash

DOTFILES_DIR=$(dirname "$0")
PATH="$DOTFILES_DIR/bin:$PATH"
export N_PREFIX="$HOME/.n"
export XDG_CONFIG_HOME="$HOME/.config"
export STOW_DIR="$DOTFILES_DIR"

# sudo
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# =========================
# Core MacOS software
# =========================

# Homebrew
is-executable brew || sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Git
brew install git

# Zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
upgrade_oh_my_zsh
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Ruby
brew install ruby

# NodeJS
brew install node
brew install n
n latest

# =========================
# Packages
# =========================

# Brew packages
brew bundle --file="$DOTFILES_DIR/install/Brewfile"

# Brew-Cask apps
brew bundle --file="$DOTFILES_DIR/install/Caskfile"
for EXT in $(cat install/Codefile); do code --install-extension $EXT; done

# =========================
# Linking
# =========================

# Install stow
is-executable stow || brew install stow

# Execute linking
for FILE in $(ls -A runcom); do if [ -f $(HOME)/$FILE -a ! -h $(HOME)/$FILE ]; then mv -v $(HOME)/$FILE{,.bak}; fi; done
mkdir -p $(XDG_CONFIG_HOME)
stow -t $(HOME) runcom
stow -t $(XDG_CONFIG_HOME) config

# Copy VSCode settings
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/