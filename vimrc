" ------------------------------------------------------------------------
" file:     ~/.vimrc
" authtor:  serdotlinecho
" vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:fdm=indent:fdn=1:ft=vim:
" ------------------------------------------------------------------------   

set nocompatible            " use vim, no vi defaults
filetype plugin indent on   " filetype detection and settings

" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" installing bundles to ~/.vim/bundle
Bundle 'tomtom/tcomment_vim'
Bundle 'scrooloose/nerdtree'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"

" Highlighting
set t_Co=256
syntax enable
" set background=dark
colorscheme solarized
" if &t_Co > 2 || has("gui_running")
"     syntax on                       " switch syntax highlighting on, when the terminal has colors
"     colorscheme molokai             " load colorscheme
" endif

" Editing behaviour 
set tabstop=4           " tabs appear as n number of columns
set shiftwidth=4        " n cols for auto-indenting
set expandtab           " insert spaces instead of tabs
set autoindent          " auto indents next new line
set number              " always show line numbers
set backspace=2         " full backspacing capabilities (indent,eol,start)
set ruler               " show the cursor position all the time
set linebreak           " attempt to wrap lines cleanly

" searching
set hlsearch            " highlight all search results
set incsearch           " increment search
set ignorecase          " case-insensitive search
set smartcase           " uppercase causes case-sensitive search

" vim behaviour
set norelativenumber    " show no relativ line numbers
set nobackup            " disable backup files (filename~)
set noswapfile          " do not write annoying intermediate swap files
set wildmenu            " enhanced tab-completion shows all matching cmds in a popup menu

" status bar info and editor layout
set statusline=\ \%f%m%r%h%w\ ::\ %y\ [%{&ff}]\%=\ [%p%%:\ %l/%L]\ 
set laststatus=2        " always show the status line
set cmdheight=1         
set encoding=utf-8      " use UTF-8 encoding

" toggle NERDtree
map <F2> :NERDTreeToggle<CR>    

" useful mappings for managing tabs
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>
