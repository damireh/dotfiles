bindkey -v

if [[ -r ~/.aliasrc ]]; then
  source ~/.aliasrc
fi

setopt APPEND_HISTORY INC_APPEND_HISTORY HIST_IGNORE_DUPS HIST_REDUCE_BLANKS NO_HIST_BEEP PROMPT_SUBST

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey "^R" history-incremental-search-backward
zle -N edit-command-line

setopt AUTO_CD NO_BEEP CORRECT

autoload -U compinit promptinit colors edit-command-line
compinit; promptinit; colors

current_directory() {
  echo "%1~"
}

git_prompt() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo "${ref#refs/heads/}"
  fi
}

ruby_version() {
  if (( $+commands[rbenv] )) then
    echo "$(rbenv version | awk '{print $1}')"
  fi
}

ruby_prompt() {
  if ! [[ -z "$(ruby_version)" ]] then
    echo "$(ruby_version)"
  fi
}

PROMPT='%F{green}$(git_prompt)%f %F{blue}$(current_directory)%f '
RPROMPT='%F{yellow}$(ruby_prompt)%f'
