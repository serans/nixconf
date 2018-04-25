"
" Turning VIM into my IDE
"
" - Trade flexibility and editing power for discoverability and 'visual'
"   interface
"
" Essentials:
"   - Mouse Integration
"   - File explorer (NERDTree)
"     - Show file in NERDTree
"   - Search file by name (FZF)
"     - With preview
"   - Find in files (Ar)
"     - With preview
"   - Buffer Tabs
"     - Clickable
"     - Previous/Next
"     - Jump to...
"     - Close All
"     - Close Others ( %bd|e#|bd# )
"   - Jump/Navigate definitions (Ctags?)
"
" Desirable:
"   git integration
"     - view state in file explorer
"     - view state in diff/split window
"   menu bar with common commands?
"   command palette a-la vscode
"     - search for description, find the shortcut
"     - enter to execute
"
" To-Explore:
"    - TagList
"    - CtrlP


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
Plugin 'junegunn/fzf.vim'

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
colorscheme elflord
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

" FZF config
map <C-f> :call fzf#vim#files("", fzf#vim#with_preview())<CR>
"let g:fzf_layout = { 'window': 'enew' }
