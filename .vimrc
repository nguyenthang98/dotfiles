set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Code Completion
Plugin 'valloric/youcompleteme'

" Color scheme
Plugin 'altercation/vim-colors-solarized'

" Indent Line
Plugin 'yggdroot/indentline'

" Git support
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required

" Tab and indent
set autoindent
set shiftround
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Search and highlight
set hlsearch
set incsearch
set smartcase

" Performance options
set complete-=i
set lazyredraw

" Text rendering options
set encoding=utf-8
set linebreak
syntax enable
set wrap

" User Interface Options
set background=light
let g:solarized_termcolors=256
colorscheme solarized
set wildmenu
set ruler
set noerrorbells
set mouse=a
set title
let g:indentLine_char='¦'

" Code folding options
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" Other options
" 
" disable preview window when using tab key
set completeopt-=preview
let g:indentLine_enabled=0
