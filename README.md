## Environment setup

This repository contains dotfiles and configuration files for various tools and applications.  The installation assumes a fresh install of macOS and the use of zsh as the default shell.

### Package manager: Homebrew

- Install [Homebrew](https://brew.sh)
- Install required utilities
```bash
brew install gh just stow
```

### Clone repo

```bash
gh repo clone vgarzon8/dotfiles ~/path/to/local/repo
```

### Install packages

```bash
brew bundle install --file=Brewfile
```

### Create symlinks for dotfiles

Create folders in `~/.config` for each application that requires configuration files.
```bash
mkdir -p ~/.config/{aerospace,ghostty,nvim,tmux,yazi,zsh}
```

Check for conflicts in symlinks
```bash
just dryrun
```

Create symlinks
```bash
just stow
```

### Install plugins

Zsh, Tmux, and Neovim plugins will be installed automatically when the respective applications are launched for the first time.

To install Yazi plugins:
```bash
ya pkg install
```

