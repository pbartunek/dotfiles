call plug#begin('~/.vim/plugged')

" Navigate and manipulate files in a tree view.
Plug 'scrooloose/nerdtree'

" Dim paragraphs above and below the active paragraph.
Plug 'junegunn/limelight.vim'

" Distraction free writing by removing UI elements and centering everything.
Plug 'junegunn/goyo.vim'

call plug#end()

filetype plugin on " recognize file types
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

set nofoldenable

set complete+=kspell

" disable arrow keys
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" auto spellcheck for markdown files
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us

" switch view to Goyo for markdown
autocmd BufRead,BufNewFile *.md Goyo

let g:netrw_liststyle=3

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1

" grep recursively for word under cursor
nmap <Leader>g :tabnew\|read !grep -Hnr '<C-R><C-W>'<CR>

" Base64 decode word under cursor
nmap <Leader>b :!echo <C-R><C-W> \| base64 -d<CR>

" resolve host name from current line
nmap <Leader>h :!host '<C-R><C-L>' <CR>

" sort the buffer removing duplicates
nmap <Leader>s :%!sort -u --version-sort<CR>
