syntax on
set number
set hlsearch
set ruler
set encoding=utf-8
highlight Comment ctermfg=green
set t_Co=256
set background=dark

filetype indent on
set showmode

nnoremap zz :update<cr>
nnoremap ZZ :update<cr>:q<cr>

au Filetype python setlocal ts=4 sw=4 sts=4 autoindent smartindent expandtab 
au Filetype c setlocal ts=8 sw=8 sts=8 autoindent smartindent noexpandtab
au Filetype make setlocal ts=8 sw=8 sts=8 autoindent smartindent noexpandtab
