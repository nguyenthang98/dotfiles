" =============================== Installing Vim Plug =======================

set nocompatible
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" Install plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'valloric/youcompleteme', { 'do': './install.py'}
" Plug 'Shougo/unite.vim'
Plug 'Shougo/denite.nvim'

call plug#end()
" ================================ End Vim Plug =============================
"
" ============================== Vundle setting up ==========================
"
" set nocompatible
" filetype off
" 
" " set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" 
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" 
" " emmet vim for html and css
" Plugin 'mattn/emmet-vim'
" 
" " Code Completion
" Plugin 'valloric/youcompleteme'
" 
" " Color scheme
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'morhetz/gruvbox'
" 
" " Indent Line
" Plugin 'yggdroot/indentline'
" 
" " Git support
" Plugin 'tpope/vim-fugitive'
" 
" " Vim surrounding
" Plugin 'tpope/vim-surround'
" 
" " Vim commentary
" Plugin 'tpope/vim-commentary'
" 
" " system copy
" Plugin 'christoomey/vim-system-copy'
" 
" " Nerd tree
" " Plugin 'scrooloose/nerdtree'
" 
" call vundle#end()            " required
" filetype plugin indent on    " required
"
" =========================== End of Vundle ========================


" ------------------ Editor mouse setup
if has('mouse')
  set mouse=a
endif

" ------------------ Vim auto write and auto read
set autowrite
set autoread

" ------------------ Tab and indent
set autoindent
set shiftround
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" ------------------ Search and highlight
set hlsearch
set incsearch
set smartcase

" ------------------ Performance options
set complete-=i
set lazyredraw

" ------------------ Text rendering options
set encoding=utf-8
set linebreak
syntax enable
set wrap

" ------------------ Vim gruvbox color setting
let g:gruvbox_termcolors=256

" ------------------ User Interface Options
set background=dark
" colorscheme gruvbox
colorscheme default
" setting cursor line
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgrey
hi LineNr ctermbg=black
" set cursorcolumn
set wildmenu
set ruler
set noerrorbells
set mouse=a
set title
set number
set relativenumber
set showcmd

" ------------------ Code folding options
set foldmethod=indent
set foldnestmax=3
set nofoldenable

" ------------------ Other options
" 
" disable preview window when using tab key
set completeopt-=preview
" commentary key binding
map cm gc
