" ----------------------
" file:    ~/.vimrc
" authtor: serdotlinecho
" ----------------------   

" Basic behaviour
filetype on
filetype plugin on
filetype indent on
syntax on

set t_Co=256
if &t_Co > 2 || has("gui_running")
    " Syntax highlighting
    syntax enable
    colorscheme molokai
endif

map <C-c> "+y<CR>

set nocompatible        " Use vim, no vi defaults
set encoding=utf-8      " use UTF-8 encoding
set number              " always show line numbers
set ruler               " Show line and column number
set norelativenumber    " show no relativ line numbers
set nobackup            " disable backup files (filename~)
set backspace=2         " full backspacing capabilities (indent,eol,start)
set linebreak           " attempt to wrap lines cleanly
set wildmenu            " enhanced tab-completion shows all matching cmds in a popup menu

" tabs and indenting
set tabstop=4           " tabs appear as n number of columns
set shiftwidth=4        " n cols for auto-indenting
set expandtab           " insert spaces instead of tabs
set autoindent          " auto indents next new line

" searching
set hlsearch            " highlight all search results
set incsearch           " increment search
set ignorecase          " case-insensitive search
set smartcase           " uppercase causes case-sensitive search

" status bar info and appearance
set statusline=\ \%f%m%r%h%w\ ::\ %y\ [%{&ff}]\%=\ [%p%%:\ %l/%L]\ 
set laststatus=2
set cmdheight=1
