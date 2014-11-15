[[ -f ~/.aliases ]] && source ~/.aliases

autoload -Uz compinit; compinit

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt appendhistory autocd

