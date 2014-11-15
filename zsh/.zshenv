export EDITOR=vim

export PATH="/usr/local/bin:/usr/local/sbin:/usr/sbin:$HOME/.rbenv/bin:$PATH"

if which rbenv > /dev/null; then 
  eval "$(rbenv init -)"; 
fi

[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
