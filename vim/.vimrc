set noswapfile nowritebackup nobackup
set tabstop=2 shiftwidth=2 expandtab
set backspace=2
set nu relativenumber numberwidth=4
autocmd BufWritePre * :%s/\s\+$//e
set incsearch hlsearch
