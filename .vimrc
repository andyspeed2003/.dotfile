set nocompatible
set ff=unix
:imap hh <c-x><c-o>
:imap jj <esc>
syntax on
highlight linenr ctermfg=grey
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set showmatch
set hlsearch
set incsearch
set visualbell
set noerrorbells
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
colorscheme elflord
set autowrite
nnoremap <c-b> :!g++ -std=c++11 % -Wall -g -o %.out && ./%.out<cr>
autocmd filetype c nnoremap <C-c> :w <bar> !gcc -std=c99 -lm % -o %:p:h/%:t:r.out && ./%:r.out<CR>
autocmd filetype java nnoremap <C-c> :w <bar> !javac % && java -enableassertions %:p <CR>
autocmd filetype python nnoremap <C-b> :w <bar> !python3 % <CR>
autocmd filetype perl nnoremap <C-c> :w <bar> !perl % <CR>
autocmd filetype go nnoremap <C-c> :w <bar> !go build % && ./%:p <C
se mouse+=a

set number
vmap <C-c> "+y
nmap <C-v> "+p
