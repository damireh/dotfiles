bindkey -v

[[ -f ~/.aliasrc ]] && source ~/.aliasrc

setopt APPEND_HISTORY INC_APPEND_HISTORY HIST_IGNORE_DUPS HIST_REDUCE_BLANKS NO_HIST_BEEP
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt AUTO_CD NO_BEEP CORRECT

autoload -U compinit promptinit
compinit; promptinit
