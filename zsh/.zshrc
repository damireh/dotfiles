[[ -f ~/.aliases ]] && source ~/.aliases

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v

setopt AUTO_CD PUSHD_IGNORE_DUPS APPEND_HISTORY

autoload -U compinit promptinit
compinit; promptinit
