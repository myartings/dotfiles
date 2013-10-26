" ------------------------------------------------------------------------
" file:     ~/.vimrc
" authtor:  serdotlinecho
" vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:fdm=indent:fdn=1:ft=vim:
" ------------------------------------------------------------------------

" general
set nocompatible            " we're running Vim, not Vi!
filetype plugin indent on   " filetype detection and settings
set encoding=utf-8          " we like utf-8

" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle "garbas/vim-snipmate"
Bundle 'tomtom/tcomment_vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"

" highlighting
syntax on
colorscheme solarized
" set background=dark

" editing behaviour
set tabstop=4           " tabs appear as n number of columns
set shiftwidth=4        " n cols for auto-indenting
set expandtab           " insert spaces instead of tabs
set autoindent          " auto indents next new line
set number              " show the line number for each line
set backspace=2         " full backspacing capabilities (indent,eol,start)
set ruler               " show the cursor position all the time
set linebreak           " attempt to wrap lines cleanly
set cpoptions=ces$      " `cw` put dollar sign at the end

" vim behaviour
set norelativenumber    " show no relative line numbers
set nobackup            " disable backup files (filename~)
set noswapfile          " do not write annoying intermediate swap files
set wildmenu            " enhanced tab-completion shows all matching cmds in a popup menu
set laststatus=2        " always show the status line

" searching
set hlsearch            " highlight all search results
set incsearch           " show match for partly typed search command
set ignorecase          " case-insensitive search
set smartcase           " override 'ignorecase' when pattern has upper case characters

" ----------------------
" custom key mapping
" ---------------------

" change map <leader> from \ to ,
let mapleader = ","

" reload .vimrc
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Y to yank to end of line
map Y y$

" toggle line numbers
nnoremap <leader>n :set nonumber!<CR>

" useful mappings for managing tabs
nnoremap tn :tabnew<CR>
nnoremap tc :tabclose<CR>

" disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" easier split window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" ----------------------------------
" settings for plugins
" ----------------------------------

" vim-airline settings
" let g:airline_theme='dark'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#whitespace#trailing_format = 'trailing[%s]'
let g:airline#extensions#whitespace#mixed_indent_format = 'mixed-indent[%s]'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#branch#empty_message = ''

" NERDtree
nmap <leader>d :NERDTreeToggle <CR>
nmap <leader>f :NERDTreeFind <CR>

