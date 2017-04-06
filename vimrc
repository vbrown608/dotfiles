set t_Co=256
set nocompatible              " be iMproved, required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

"" end vimawesome (for now)

set encoding=utf-8
setglobal fileencoding=utf-8

set showmode
set showcmd
set mouse=a

set number

"" Whitespace
set tabstop=2 shiftwidth=2
set expandtab
set autoindent
set smartindent
set backspace=indent,eol,start

"" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" Make Ctrl-e jump to the end of the current line in the insert mode. This is
" handy when you are in the middle of a line and would like to go to its end
" without switching to the normal mode.
inoremap <C-e> <C-o>$


" Allows you to easily replace the current word and all its occurrences.
nnoremap <Leader>rc :%s/\<<C-r><C-w>\>/
vnoremap <Leader>rc y:%s/<C-r>"/

nnoremap <Leader>- :split<cr>
nnoremap <Leader>\| :vsplit<cr>
nnoremap <Leader><Delete> :qall<cr>
nnoremap <Leader><S-Delete> :qall!<cr>

" make tabs and trailing spaces visible
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅

" When you open a file, you can undo changes you made previously
set undofile
set undodir=~/.vim/undo/

" to underline entire cursor line
set cursorline

" allow vim to resize windows
set ttymouse=xterm2

" usable esc key on some kbs
set noswapfile
set nobackup
set nowritebackup

set whichwrap=h,l,~,[,]
set directory=~/.vim/swp
syntax on

set guioptions=aegirLt
set guioptions-=m "remove menu bar
set guioptions-=T "remove toolbar
set guioptions-=r "remove right-hand scroll bar

set guifont=Inconsolata\ Medium\ 13
