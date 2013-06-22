" ----------------------
" file:    ~/.vimrc
" authtor: serdotlinecho
" ----------------------

map ; :
syntax on
filetype plugin on
filetype indent on

set nocompatible        " leave the old ways behind.
set nobackup            " disable backup files (filename~)
set encoding=utf-8      " UTF-8 encoding for all new files
set backspace=2         " full backspacing capabilities (indent,eol,start)
"set showcmd             " show (partial) command in status line.
set number              " show line numbers.
set linebreak           " attempt to wrap lines cleanly
set wildmenu            " enhanced tab-completion shows all matching cmds in a popup menu
set background=dark     " use colors that look good on dark background

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
