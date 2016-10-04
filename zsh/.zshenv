export EDITOR=vim
export CLICOLOR=1

typeset -U path
path=(/usr/local/bin /usr/local/sbin /usr/sbin /sbin ~/.rbenv/bin $path)

eval "$(direnv hook $0)"

[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
