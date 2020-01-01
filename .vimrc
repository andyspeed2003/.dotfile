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
execute "set rtp+=" . g:opamshare . "/merlin/vim"
vmap '' :w !pbcopy<cr><cr>
colorscheme elflord
set autowrite
nnoremap <c-b> :!g++ -std=c++11 % -Wall -g -o %.out && ./%.out<cr>
se mouse+=a
set relativenumber
