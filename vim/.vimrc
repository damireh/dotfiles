set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'ap/vim-css-color'
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
Plugin 'hashivim/vim-terraform'
Plugin 'itchyny/lightline.vim'
Plugin 'janko-m/vim-test'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'rhysd/vim-crystal'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-surround'

call vundle#end()

filetype plugin indent on

syntax on

colorscheme smyck

set noswapfile nowritebackup nobackup
set tabstop=2 shiftwidth=2 expandtab
set textwidth=120 colorcolumn=+1
set backspace=2
set nu relativenumber numberwidth=2
set incsearch hlsearch
set laststatus=2 ruler showcmd
set wildignore+=*/tmp/*
set clipboard=unnamed

autocmd BufWritePre * :%s/\s\+$//e

function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction

nmap <silent> <leader>ca :CrystalSpecRunAll<CR>
nmap <silent> <leader>ct :CrystalSpecRunCurrent<CR>
nmap <silent> <leader>cf :CrystalFormat<CR>

nmap <silent> <leader>T :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>

inoremap <Tab> <c-r>=InsertTabWrapper()<cr>

let g:user_emmet_leader_key='<C-x>'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
let g:terraform_fmt_on_save=1
