"""""""""""
" General "
"""""""""""
set encoding=utf8
set nocompatible              " vim, not vi

" UI
set background=dark
set ruler
set autoread
set number
set showmode
set showcmd
syntax on
set mouse=a

" Use 256 colors
set t_Co=256

" Format
set smartindent

" Defult tabs
set expandtab
set shiftwidth=3
set tabstop=2

" Per-fie config
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType Makefile setlocal noexpandtab


