let mapleader=" "

""""""""""""""""""""""""""""""
" Set
""""""""""""""""""""""""""""""
syntax on "開啟高亮
set nocompatible
set nu "顯示行號
set wildmenu
set ambiwidth=double

set showmatch
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline  "突出顯示當前行
set wrap
set showcmd
set ignorecase
set laststatus=2
set encoding=UTF-8

"啟用滑鼠
set mouse=a
set selection=exclusive
set selectmode=mouse,key
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" Plug
""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/indentLine'
Plug 'crusoexia/vim-monokai'
Plug 'ervandew/supertab'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdtree'  " File tree manager
Plug 'ryanoasis/vim-devicons'   " add beautiful icons besides files
Plug 'christoomey/vim-tmux-navigator'
Plug 'mhinz/vim-startify'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " enhance devicons
Plug 'xuyuanp/nerdtree-git-plugin'  " display git status within Nerdtree
Plug 'jistr/vim-nerdtree-tabs'  " enhance nerdtree's tabs
call plug#end()
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
"nerdtree
""""""""""""""""""""""""""""""
"自動開啟 Nerdtree
"autocmd vimenter * NERDTree  

"當NERDTree為剩下的唯一窗口時自動關閉
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open Nerdtree when there's no file opened
"autocmd vimenter * if !argc()|NERDTree|endif

">> Basic settings
let g:NERDTreeChDirMode = 2  "Change current folder as root
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) |cd %:p:h |endif

"let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

"UI settings
let g:NERDTreeShowLineNumbers=1  "顯示行號
let g:NERDTreeHidden=1  " Don't show hidden files
let g:NERDTreeWinPos='left' "視窗位置
"let NERDTreeMinimalUI=1 "Delete help information at the top
let NERDTreeDirArrows=1 " Display arrows instead of ascii art in NERDTree
let NERDTreeChDirMode=2 " Change current working directory based on root directory in NERDTree
let g:NERDTreeWinSize = 30 "設定 NERDTree 視窗大小
let NERDTreeAutoDeleteBuffer = 1  " Auto delete buffer deleted with NerdTree
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '__pycache__']   " Hide temp files in NERDTree

"修改樹的顯示圖示
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
"let g:NERDTreeDirArrowExpandable = '|'
"let g:NERDTreeDirArrowCollapsible = '/'
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
"nerdtree-git-plugin settings
""""""""""""""""""""""""""""""
"let g:NERDTreeShowIgnored = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""
"vim-devicons
""""""""""""""""""""""""""""""
set guifont=DroidSansMono\ Nerd\ Font\ 10
"set guifont=JetBrainsMonoNL\ Nerd\ Font\ 10
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
"vim-devicons settings
""""""""""""""""""""""""""""""
set encoding=UTF-8

"Can be enabled or disabled
let g:webdevicons_enable_nerdtree = 1

"whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1

"adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1

"adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
"vim-nerdtree-syntax-highlight settings
""""""""""""""""""""""""""""""
"Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

"Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
let g:NERDTreeHighlightFolders = 1

"highlights the folder name
let g:NERDTreeHighlightFoldersFullName = 1

"you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:Turquoise = "40E0D0"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = "FE405F"
let s:git_orange = "F54D27"
let s:gray = "808A87"

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['o'] = s:gray " sets the color of o files to blue
let g:NERDTreeExtensionHighlightColor['h'] = s:blue " sets the color of h files to blue
let g:NERDTreeExtensionHighlightColor['c'] = s:green " sets the color of c files to blue
let g:NERDTreeExtensionHighlightColor['cpp'] = s:green " sets the color of cpp files to blue
let g:NERDTreeExtensionHighlightColor['c++'] = s:green " sets the color of c++ files to blue
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" Map
""""""""""""""""""""""""""""""
imap jk <Esc>
nmap <space> :

nmap tt :tabe<CR>
nmap tk :+tabnext<CR>
nmap tj :-tabnext<CR>

map <LEADER>d <C-w>l
map <LEADER>w <C-w>k
map <LEADER>a <C-w>h
map <LEADER>s <C-w>j

map <LEADER>h :split<Space>
map <LEADER>v :vsplit<Space>

nmap <F7> :TagbarToggle<CR>

nmap <C-e> :NERDTreeToggle<CR>

map <F8> :MarkdownPreview<CR>
map <F9> :MarkdownPreviewStop<CR>
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" Other
""""""""""""""""""""""""""""""
let g:startify_files_number = 20

let g:airline_powerline_fonts = 1

colo monokai
""""""""""""""""""""""""""""""