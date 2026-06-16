# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# docker completions
FPATH="$HOME/.docker/completions:$FPATH"
fpath=($HOME/.docker/completions $fpath)
autoload -Uz compinit
compinit

# rust Cargo utility
export RUSTUP_HOME=$HOME/rust/rustup
export CARGO_HOME=$HOME/rust/cargo
. ${CARGO_HOME}/env

# add nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# local env vars
export VISUAL=nvim
export EDITOR=$VISUAL
export NODE_EXTRA_CA_CERTS=~/lib/cert/zscaler.pem

# customize fzf shell integration
export FZF_DEFAULT_COMMAND='fd --hidden --follow --exclude ".git" .'
export FZF_CTRL_T_COMMAND='fd --hidden --follow --exclude ".git" .'
export FZF_CTRL_T_OPTS="--preview 'bat --color=always {}'"
