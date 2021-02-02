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
autocmd filetype cpp nnoremap <C-b> :w <bar> !clear && g++ -std=gnu++14 -O2 % -o %:p:h/%:t:r.exe && ./%:r.exe<CR>
autocmd filetype c nnoremap <C-b> :w <bar> !gcc -std=c99 -lm % -o %:p:h/%:t:r.out && ./%:r.out<CR>
autocmd filetype java nnoremap <C-b> :w <bar> !javac % && java -enableassertions %:p <CR>
autocmd filetype python nnoremap <C-b> :w <bar> !python3 % <CR>
autocmd filetype perl nnoremap <C-b> :w <bar> !perl % <CR>
autocmd filetype go nnoremap <C-b> :w <bar> !go build % && ./%:p <CR>
se mouse+=a

set number
vmap <C-c> "+y
nmap <C-v> "+p
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
