bindkey -v

if [[ -r ~/.aliasrc ]]; then
  source ~/.aliasrc
fi

setopt APPEND_HISTORY INC_APPEND_HISTORY HIST_IGNORE_DUPS HIST_REDUCE_BLANKS NO_HIST_BEEP

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey "^R" history-incremental-search-backward

setopt AUTO_CD NO_BEEP CORRECT

autoload -U compinit promptinit
compinit; promptinit
