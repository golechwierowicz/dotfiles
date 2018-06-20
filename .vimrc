" ----------------- PLUGINS -------------------"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" CtrlP Fuzzy search
set runtimepath^=~/.vim/bundle/ctrlp.vim

call vundle#begin()
" Keep Plugin commands between vundle#begin/end.
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nerdtree
Plugin 'scrooloose/nerdTree'

" LateX
Plugin 'lervag/vimtex'

" Airline
Plugin 'vim-airline/vim-airline'

" Nerdtree tabs
Bundle 'jistr/vim-nerdtree-tabs'

" CTRLP
Plugin 'ctrlpvim/ctrlp.vim'

" VIM Autotag support
Bundle 'craigemery/vim-autotag'

" Sample folding
Plugin 'tmhedberg/SimpylFold'

" Pytest tests
Plugin 'alfredodeza/pytest.vim'

" Pytest tests
Plugin 'plytophogy/vim-virtualenv'

" Solarized color scheme
Plugin 'altercation/vim-colors-solarized'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" ----------------- MAPPINGS ETC -------------------"

" Base
syntax enable
set background=dark
colorscheme solarized

set autoindent
set incsearch
set hlsearch
set nu

" Move lines with shift and up/down arrows
no <S-down> ddp
no <S-up> ddkP

" Better page navigation
nmap G Gzz
nmap L Lzz
nmap H Hzz

" Nice pythonic formatting
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Open nerd tree
map <C-n> :NERDTreeTabsToggle<CR>

" Scroll through tabs with shift and nums
nmap <S-l> :tabn<CR>
nmap <S-h> :tabp<CR>

" Allow some mouse...
set mouse=a

" Set global variable names
let g:autotagTagsFile="tags"
let g:SimpylFold_docstring_preview=1
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$']

" Enable tag search with ctrl + p
nnoremap <leader>. :CtrlPTag<cr>

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Pytest
nmap <silent><Leader>pf <Esc>:Pytest file looponfail<CR>
nmap <silent><Leader>pc <Esc>:Pytest class looponfail<CR>
nmap <silent><Leader>pm <Esc>:Pytest method looponfail<CR>
nmap <silent><Leader>pe <Esc>:Pytest first looponfail<CR>
