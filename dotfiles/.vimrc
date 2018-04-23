" To-Do:
"   DONE fzf : find file by name
"   find in files
"   jump to definition
"   explore ctags
"   view git diff
"
"   cl: create alias for fzf with preview
"   
"   Look&Feel
"     - why extra space after tmux bar?
"     - tabs for buffers: DONE buftabline
"           to do: shortcut for bn bp
"""""""""""

"""""""""""
" Plugins "
"""""""""""

" to install, run :PluginInstall

" Bundle Config
set nocompatible "required
filetype off     "required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" File management
Plugin 'scrooloose/nerdtree'

" fuzzy search
Plugin 'junegunn/fzf'

" Look & Feel
Plugin 'ap/vim-buftabline'

call vundle#end()            " required
filetype plugin indent on    " required

"execute pathogen#infect()
"filetype plugin indent on


"""""""""""
" Config  "
"""""""""""

set encoding=utf8

" UI
set background=dark
set ruler
set autoread
set number
set showmode
set showcmd
syntax on
set mouse=a

" Buffer navigation
set hidden
nnoremap . :bnext<CR>
nnoremap , :bprev<CR>

" Use 256 colors
set t_Co=256

" Format
set smartindent

" Defult tabulation
set expandtab
set shiftwidth=3
set tabstop=2

" Per-language config
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType Makefile setlocal noexpandtab

" NERDTree config
map <C-n> :NERDTreeToggle<CR>
