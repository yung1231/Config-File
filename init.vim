set nocompatible
let mapleader=" "
set wildmenu
set ambiwidth=double
set nu
set showmatch
syntax on
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set wrap
set showcmd
set ignorecase
set mouse=a

imap jk <Esc>
nmap <space> :

nmap tt :tabe<CR>
nmap tk :+tabnext<CR>
nmap tj :-tabnext<CR>

map <LEADER>d <C-w>l
map <LEADER>w <C-w>k
map <LEADER>a <C-w>h
map <LEADER>s <C-w>j

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'crusoexia/vim-monokai'
Plug 'ervandew/supertab'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
call plug#end()


nmap <C-e> :NERDTreeToggle<CR>
colo monokai
nmap <F8> :TagbarToggle<CR>

hi Normal ctermfg=252 ctermbg=none
