filetype plugin indent on
syntax on
set encoding=utf-8

set tabstop=2
set shiftwidth=2
set expandtab
set cc=80

set ignorecase
set smartcase
set smartindent
set hlsearch

set number
set noswapfile

nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

let g:netrw_liststyle=3

set foldmethod=marker
set foldmarker={,}
set foldlevel=20
set foldlevelstart=20
