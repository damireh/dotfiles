set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'

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

autocmd BufWritePre * :%s/\s\+$//e

set wildignore+=*/tmp/*

map <Leader>t :Dispatch rspec %<CR>
map <Leader>a :Dispatch rspec .<CR>

let g:user_emmet_leader_key='<C-x>'
