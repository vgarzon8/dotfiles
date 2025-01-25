## Shell configuration files

### Zsh config

- [Catppuccin](https://github.com/catppuccin/iterm) color scheme
  - Alternative: [iTerm2](https://iterm2colorschemes.com/) color schemes
- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
- zinit plugin manager
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

### Command line tools

- Install `homebrew`

```bash
brew install gh stow just bat zoxide fzf lsd ripgrep fd yazi
```

### Fonts

- Nerd Fonts with homebrew

```bash
brew search nerdfont
brew install font-meslo-lg-nerd-font font-fira-code-nerd-font font-fira-mono-nerd-font
```

### Window management

```bash
brew install --cask nikitabobko/tap/aerospace
```

### Configuration files

- Clone dotfiles repository
```bash
gh repo clone vgarzon8/dotfiles
```

- Create links `stow`  -- see `justfile` for details
```bash
just stow
```

