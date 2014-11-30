set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'benmills/vimux'
Plugin 'gmarik/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'jgdavey/vim-turbux'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'

call vundle#end()

filetype plugin indent on

syntax on

colorscheme smyck

set noswapfile nowritebackup nobackup
set tabstop=2 shiftwidth=2 expandtab
set textwidth=100 colorcolumn=+1
set backspace=2
set nu relativenumber numberwidth=2
set incsearch hlsearch
set laststatus=2 ruler showcmd
set wildignore+=*/tmp/*

autocmd BufWritePre * :%s/\s\+$//e

function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction

inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

let g:user_emmet_leader_key='<C-x>'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
