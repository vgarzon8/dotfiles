# aliases
alias ls='lsd -F'
alias ll='lsd -lF'
alias dus='du -sh'
alias dum='du -sm * | sort -nr'
alias dfc='for dir in */; do echo "$(find "$dir" -type f | wc -l) "$dir""; done | sort -nr'
alias dirs='dirs -v'
alias vim='nvim'
alias vi='nvim'
