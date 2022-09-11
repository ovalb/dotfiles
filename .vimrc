syntax on

set nocompatible
set number
set autoindent
set nobackup
set tabstop=4
set shiftwidth=4
set ruler
set hlsearch
set noswapfile
set cursorline
set t_Co=256 

imap jj <Esc>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

colorscheme noctu
