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
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'valloric/youcompleteme', { 'do': './install.py --js-completer --clang-completer'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'heavenshell/vim-jsdoc'
Plug 'airblade/vim-gitgutter'
Plug 'yuttie/comfortable-motion.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-eunuch'
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


" ======================> Editor mouse setup <===================
if has('mouse')
  set mouse=a
endif

" =================> Vim auto write and auto read <==============
set autowrite
set autoread

" =======================> Tab and indent <======================
set autoindent
set shiftround
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set modeline

" =====================> Search and highlight <==================
set hlsearch
set incsearch
set ignorecase
set smartcase

" ====================> Performance options <====================
set complete-=i
set lazyredraw

" ==================> Text rendering options <===================
set encoding=utf-8
set linebreak
syntax enable
set wrap
set list listchars=tab:»·,trail:·,nbsp:·  "<-- visualize extra white space
set nojoinspaces

" ================> Vim gruvbox color setting <==================
let g:gruvbox_termcolors=256
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_contrast_light="soft"
let g:gruvbox_italic=1          "<-- enable italic text. especically comment
let g:gruvbox_invert_indent_guides=1
let g:gruvbox_italicize_strings=1
" let g:gruvbox_vert_split="bg0"
" let g:gruvbox_improved_strings=1
" let g:gruvbox_invert_selection=0

" ==================> User Interface Options <===================
set background=dark
colorscheme gruvbox
set cursorline
" hi CursorLine cterm=NONE ctermbg=darkgrey
" hi LineNr ctermbg=black
set wildmenu
set ruler
set noerrorbells
set mouse=a
set title
" set number
" set relativenumber
set showcmd

" ===================> interactive terminal <====================
set termwinsize=10x0
set splitbelow
nmap <C-t> :term<CR>

" ===================> Code folding options <====================
set foldmethod=indent
set foldnestmax=4
set nofoldenable

" ======================== Other options =========================
" => no swap files an backupfiles <=
set noswapfile
set nobackup
set nowritebackup
" => Use system clipboard to copy and paste <=
set clipboard=unnamedplus
map <p> "+p
set completeopt=longest,menuone

" =================> Commentary Configurations <==================
map cm gc

" ====================> YCM Configurations <======================
" disable preview window when using tab key
" set completeopt-=preview
" let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'

" =====================> FZF Configurations <=====================
nmap <c-p> :GitFiles<CR>

" =================> JsDoc Configurations <=======================
" let g:jsdoc_allow_input_prompt=1
" let g:jsdoc_input_description=1

" =================> NERDTree Configurations <====================
nmap <c-o> :NERDTreeToggle<CR>

" =================> Emmet Configurations <=======================
" " Emmet vim key config
" let g:user_emmet_expandabbr_key='<Tab>'
" " only set emmet for html and css
" let g:user_emmet_install_global = 0
" autocmd FileType html,css EmmetInstall

" ==================> ALE configurations <========================
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

" =================> Git gutter Configurations <==================
let g:gitgutter_enabled = 0   " <-- disable by default
set updatetime=1000
let g:gitgutter_max_signs = 1000

" ===========> comfortable motion Configurations <================
" let g:comfortable_motion_no_default_key_mappings = 1 "<-- prevent default
"                                                                               __
" noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>      | mouse support
" noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>   __|

nnoremap <silent> <PageDown> :call comfortable_motion#flick(130)<CR>
nnoremap <silent> <PageUp> :call comfortable_motion#flick(-130)<CR>
inoremap <PageDown> <C-o>:call comfortable_motion#flick(130)<CR>
inoremap <PageUp> <C-o>:call comfortable_motion#flick(-130)<CR>
vnoremap <PageDown> :<C-u>call comfortable_motion#flick(130)<CR>
vnoremap <PageUp> :<C-u>call comfortable_motion#flick(-130)<CR>

" g:comfortable_motion_interval       | <- default 1000.0/60
" g:comfortable_motion_friction       | <- default 80.0
" g:comfortable_motion_air_drag       | <- default 2.0

" ===========> vim editor config Configurations <================
let g:EditorConfig_exclude_patterns = ['fugitive://.\*', 'scp://.\*']
