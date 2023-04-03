" ---------------------------------------------------------
" Plugins
" ---------------------------------------------------------

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/gruvbox-material'
Plug 'altercation/vim-colors-solarized'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

call plug#end()
" ---------------------------------------------------------

" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Turn on syntax highlighting
syntax on

if has('termguicolors')
  set termguicolors
endif

set background=light

colorscheme onehalflight
" For plugins to load correctly
filetype plugin indent on

highlight Comment gui=none cterm=none 

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE

" Leader key
let mapleader = " "

" Security
" set modelines=0

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set expandtab
set noshiftround

" EasyMotion
map gs <Plug>(easymotion-prefix)