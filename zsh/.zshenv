export EDITOR=vim
export CLICOLOR=1

export GOPATH=/Users/daniel/Code/go
export GOBIN=${GOPATH}/bin

typeset -U path
path=(/usr/local/bin /usr/local/sbin /usr/sbin /sbin ${GOBIN} $path)

. $HOME/.asdf/asdf.sh

eval "$(direnv hook $0)"

[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
