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
" Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'valloric/youcompleteme', { 'do': './install.py --js-completer --clang-completer'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
" Plug 'mattn/emmet-vim'
" Plug 'w0rp/ale'

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
" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·
set nojoinspaces

" ------------------ Vim gruvbox color setting
let g:gruvbox_termcolors=256

" ------------------ User Interface Options
set background=dark
colorscheme gruvbox
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgrey
hi LineNr ctermbg=black
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
set foldnestmax=4
set nofoldenable

" --------------------------------- Other options
" 
" no swap files an backupfiles
set noswapfile
set nobackup
set nowritebackup

" ------------------ Commentary Configurations
" commentary key binding
map cm gc

" ------------------ ycm configurations
" disable preview window when using tab key
" set completeopt-=preview
" let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'

" ------------------ fzf configurations
nmap <c-p> :GitFiles<CR>

" NERDTree toggle key binding
" nmap <c-o> :NERDTreeToggle<CR>

" ------------------ Emmet configurations
" " Emmet vim key config
" let g:user_emmet_expandabbr_key='<Tab>'
" " only set emmet for html and css
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall

" ------------------ ALE configurations
" let g:ale_close_preview_on_insert = 1
" let g:ale_completion_enabled = 1
" let g:ale_lint_on_enter = 0
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_linters = {
"             \   'javascript': ['eslint'],
"             \   'c': ['gcc'],
"             \   'java': ['javac']
"             \}
" let g:ale_fixers = {
"             \   'javascript': [
"             \       'eslint',
"             \       {buffer, lines -> filter(lines, 'v:val !=~ ''^\s*//''')},
"             \   ],
"             \}
" let g:ale_linters_explicit = 1
