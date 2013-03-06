set nocompatible
set backspace=indent,eol,start
syntax on
set wm=4
set sts=4
set sw=4
set expandtab
set autoindent
set mouse=a
set ignorecase
set bg=dark
set bs=2
set spell
set ww=b,s,<,>,[,]
"set iskeyword-=_
set smartcase
set title
set ruler
set visualbell
set showcmd
filetype indent on
filetype plugin on 
if has("gui_running")
    colorscheme darkblue
    set guifont=liberation\ mono\ 12
endif
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
set foldmethod=marker
set foldmarker={,}
set foldlevel=1
let php_sql_query = 1

autocmd BufRead,BufNewFile *.module set filetype=php
autocmd BufRead,BufNewFile *.install set filetype=php
autocmd BufRead,BufNewFile *.inc set filetype=php

let TList_Process_File_Always = 1
noremap <F4> :TlistToggle<CR>

noremap <f3> :make<CR>
au FileType php set makeprg=php\ -l\ %
au FileType php set errorformat=%m\ in\ %f\ on\ line\ %l

"noremap <F5> :ConqueTermSplit bash<CR>
"noremap <F6> :NERDTree<CR>

"call pathogen#infect()

"Clojure
"let g:vimclojure#ParenRainbow = 1
