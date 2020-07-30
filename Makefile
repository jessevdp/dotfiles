SHELL = /bin/zsh
DOTFILES_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
OS := $(shell bin/is-supported bin/is-macos macos linux)
PATH := $(DOTFILES_DIR)/bin:$(PATH)
export N_PREFIX="$HOME/.n"
export XDG_CONFIG_HOME := $(HOME)/.config
export STOW_DIR := $(DOTFILES_DIR)

all: $(OS)

macos: sudo core-macos packages link

sudo:
	sudo -v
	while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# SOFTWARE
# ===============

core-macos: brew zsh git nodejs ruby

brew:
	is-executable brew || curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install | ruby

git: brew
	brew install git

nodejs: brew
	brew install node
	brew install n
	n latest

ruby: brew
	brew install ruby

zsh: brew
	brew install zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	upgrade_oh_my_zsh
	git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
	ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# PACKAGES
# ===============

packages: brew-packages cask-apps

# TODO: Brewfile
brew-packages: brew
	brew bundle --file=$(DOTFILES_DIR)/install/Brewfile

# TODO: Codefile (vscode exts)
cask-apps: brew
	brew bundle --file=$(DOTFILES_DIR)/install/Caskfile
	for EXT in $$(cat install/Codefile); do code --install-extension $$EXT; done

# LINKING
# ===============

stow-macos: brew
	is-executable stow || brew install stow

link: stow-$(OS)
	for FILE in $$(\ls -A runcom); do if [ -f $(HOME)/$$FILE -a ! -h $(HOME)/$$FILE ]; then mv -v $(HOME)/$$FILE{,.bak}; fi; done
	mkdir -p $(XDG_CONFIG_HOME)
	stow -t $(HOME) runcom
	stow -t $(XDG_CONFIG_HOME) config

unlink: stow-$(OS)
	stow --delete -t $(HOME) runcom
	stow --delete -t $(XDG_CONFIG_HOME) config
	for FILE in $$(\ls -A runcom); do if [ -f $(HOME)/$$FILE.bak ]; then mv -v $(HOME)/$$FILE.bak $(HOME)/$${FILE%%.bak}; fi; done