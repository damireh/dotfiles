set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'

call vundle#end()

filetype plugin indent on
syntax on

colorscheme smyck

set noswapfile nowritebackup nobackup

set tabstop=2 shiftwidth=2 expandtab

set backspace=2

set nu relativenumber numberwidth=2

set incsearch hlsearch

set laststatus=2 ruler showcmd

let g:netrw_dirhistmax = 0

autocmd BufWritePre * :%s/\s\+$//e

