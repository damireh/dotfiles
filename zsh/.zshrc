bindkey -v

if [[ -r ~/.aliasrc ]]; then
  source ~/.aliasrc
fi

setopt APPEND_HISTORY INC_APPEND_HISTORY HIST_IGNORE_DUPS HIST_REDUCE_BLANKS NO_HIST_BEEP PROMPT_SUBST

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey "^R" history-incremental-search-backward

setopt AUTO_CD NO_BEEP CORRECT

autoload -U compinit promptinit colors
compinit; promptinit; colors

git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo "[%{$fg_bold[green]%}${ref#refs/heads/}%{$reset_color%}]"
  fi
}

PROMPT='$(git_prompt_info)[%{$fg_bold[blue]%}%1~%{$reset_color%}] '
