# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Docker init
source $HOME/.docker/init-zsh.sh || true 
# Docker cli completions
FPATH="$HOME/.docker/completions:$FPATH"
fpath=($HOME/.docker/completions $fpath)
autoload -Uz compinit
compinit

# Rust Cargo utility
export RUSTUP_HOME=$HOME/rust/rustup
export CARGO_HOME=$HOME/rust/cargo
. ${CARGO_HOME}/env

# Add nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# local env vars
export VISUAL=nvim
export EDITOR=$VISUAL
export NODE_EXTRA_CA_CERTS=~/lib/cert/zscaler.pem

# customize fzf shell integration
export FZF_DEFAULT_COMMAND='fd --hidden --follow --exclude ".git" .'
export FZF_CTRL_T_COMMAND='fd --hidden --follow --exclude ".git" .'
export FZF_CTRL_T_OPTS="--preview 'bat --color=always {}'"
