set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'ap/vim-css-color'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dense-analysis/ale'
Plugin 'fatih/vim-go'
Plugin 'flazz/vim-colorschemes'
Plugin 'gmarik/Vundle.vim'
Plugin 'hashivim/vim-terraform'
Plugin 'itchyny/lightline.vim'
Plugin 'janko-m/vim-test'
Plugin 'mattn/emmet-vim'
Plugin 'rhysd/vim-crystal'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-surround'

Plugin 'jparise/vim-graphql'
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'prettier/vim-prettier'

Plugin 'github/copilot.vim'

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
set encoding=utf-8 fileencoding=utf-8

autocmd BufWritePre * :%s/\s\+$//e
autocmd BufWritePre *.jsx,*.js,*.tsx,*.ts Prettier

function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction

nmap <C-P> :FZF<CR>

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
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:prettier#quickfix_auto_focus = 0

let g:rails_projections = {
      \ "app/controllers/*.rb": { "alternate": "spec/requests/{}_spec.rb" },
      \ "spec/requests/*_spec.rb": { "alternate": "app/controllers/{}.rb" }
      \ }


let g:claude_api_key = trim(join(readfile(expand('~/.config/claude.token'))))
