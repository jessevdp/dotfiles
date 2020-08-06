# dotfiles

Installs:
- [Homebrew](https://brew.sh) and packages listed in [`install/Brewfile`](./install/Brewfile).
- [Zsh](https://www.zsh.org) combined with [oh my zsh](https://ohmyz.sh).
- [Git](https://git-scm.com)
- [NodeJS](https://nodejs.org/)
- [Ruby](https://www.ruby-lang.org/en/)
- applications listed in [`install/Caskfile`](./install/Caskfile) via [homebrew-cask](https://github.com/Homebrew/homebrew-cask).
- VSCode extensions listed in [`install/Codefile`](./install/Codefile).

Configures:
- Zsh and oh- my zsh.
- Vim.
- Git.
- Npm.
- MacOS terminal.
- MacOS dock items.
- MacOS default settings, see [`macos/defaults.sh`](./macos/defaults.sh).

# Usage

On a sparkling fresh install of MacOS:

```
sudo softwareupdate -i -a
xcode-select --install
```

The Xcode Command Line Tools includes git (not available on stock macOS). Then, clone this repo:

```
git clone https://github.com/jessevdp/dotfiles.git ~/.dotfiles
```

Use the install script to install everything:

```
cd ~/.dotfiles
sh install.sh
```

Import the Terminal app profile from [`macos/Dark.terminal`](./macos/Dark.terminal) by opening that file or through the terminal apps settings UI.
Then apply MacOS defaults and dock items configuration:

```
sh ./macos/dock.sh
sh ./macos/defaults.sh
```
