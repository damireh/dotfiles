export EDITOR=vim

typeset -U path
path=(/usr/local/bin /usr/local/sbin /usr/sbin ~/.rbenv/bin $path)

if which rbenv > /dev/null; then 
  eval "$(rbenv init -)"; 
fi

[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
