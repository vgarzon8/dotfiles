# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Docker init
source /Users/48678/.docker/init-zsh.sh || true 

# Rust Cargo utility
export RUSTUP_HOME=/Users/48678/rust/rustup
export CARGO_HOME=/Users/48678/rust/cargo
. ${CARGO_HOME}/env

# Add nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
