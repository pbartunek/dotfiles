filetype plugin indent on " recognize file types
syntax on                 " enable syntax highlighting

set encoding=utf-8
set ignorecase    " case insensitive search
set smartcase     " match case when pattern starts with capital letter
set hlsearch      " highlight found searches
set incsearch     " show match as typing

set cc=80         " display line after 80 characters
set number        " line numbers
set noerrorbells  " no beeps
set ruler         " show courser position

set noswapfile    " no swap file
set nobackup      " no backup files
set nowritebackup

" indent options
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

" disable arrow keys
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

let g:netrw_liststyle=3

" folding
set foldmethod=marker
set foldmarker={,}
set foldlevel=20
set foldlevelstart=20
