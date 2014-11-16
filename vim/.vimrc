set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'

call vundle#end()

filetype plugin indent on
syntax on

colorscheme smyck

set noswapfile nowritebackup nobackup

set tabstop=2 shiftwidth=2 expandtab

set backspace=2

set nu relativenumber numberwidth=4

set incsearch hlsearch

autocmd BufWritePre * :%s/\s\+$//e

