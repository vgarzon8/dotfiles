## Shell configuration

### Command line tools

- Install [Homebrew](https://brew.sh)
- Install packages
```bash
brew install gh stow tmux just bat zoxide fzf lsd ripgrep fd yazi glow
```

### Configuration files

- Clone dotfiles repository
```bash
gh repo clone vgarzon8/dotfiles ~/repos/dotfiles
```

- Create links using `stow` 
```bash
cd ~/repos/dotfiles
just stow
```
- See `justfile` for more targets

### Fonts

- Nerd Fonts with homebrew

```bash
brew search nerdfont
brew install font-meslo-lg-nerd-font font-fira-code-nerd-font font-fira-mono-nerd-font
```

### Custom `kickstart.nvim` nvim config

- Clone forked repo
```bash
gh repo clone vgarzon8/kickstart.nvim ~/.config/nvim
```

### Window management

```bash
brew install --cask nikitabobko/tap/aerospace
```

### Zsh config info

- [Catppuccin](https://github.com/catppuccin/iterm) color scheme
  - Alternatives:
    - [iTerm2](https://iterm2colorschemes.com/),
    - [Tokyo Night](https://github.com/folke/tokyonight.nvim)
- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
  - Examples:
    - Meslo
    - Fira Code, Fira Mono
- `zinit` plugin manager
- Powerlevel10k theme
- Zsh plugins
  - romkatv/powerlevel10k
  - zsh-users/zsh-syntax-highlighting
  - zsh-users/zsh-completions
  - zsh-users/zsh-autosuggestions

### Tmux

- TPM plugin manager
- tmux-plugins/tpm
- tmux-plugins/tmux-sensible
- catppuccin/tmux#v2.1.2

### Neovim

- kickstart.nvim
- Copilot.nvim
- github/copilot.vim
- stevearc/oil.nvim
- folke/snacks.nvim -- dashboard

