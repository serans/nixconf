syntax on
set background=dark
set ruler                     " show the line number on the bar
set autoread                  " watch for file changes
set number                    " line numbers
set noautowrite               " don't automagically write on :next
set lazyredraw                " don't redraw when don't have to
set showmode
set showcmd
set nocompatible              " vim, not vi
set smartindent

" Markdown highlighting
autocmd BufRead,BufNew,BufNewFile *.md setlocal ft=markdown.gfm
