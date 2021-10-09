syntax on
set number
set hlsearch
set ruler
set encoding=utf-8
highlight Comment ctermfg=green
set t_Co=256
set background=dark
set showcmd

filetype indent on
set showmode

nnoremap zz :update<cr>
nnoremap ZZ :update<cr>:q<cr>

inoremap ii <Esc>l
vnoremap vv <Esc>

nnoremap \p i(<Esc>ea)<Esc>
nnoremap \c i{<Esc>ea}<Esc>

vnoremap \p di()<esc>hpl<esc>
vnoremap \b di[]<esc>hpl<esc>
vnoremap \c di{}<esc>hpl<esc>

au Filetype python setlocal ts=4 sw=4 sts=4 autoindent smartindent expandtab 
au Filetype c setlocal ts=8 sw=8 sts=8 autoindent smartindent noexpandtab
au Filetype make setlocal ts=8 sw=8 sts=8 autoindent smartindent noexpandtab

set copyindent
set pastetoggle=<F2>

nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
"nnoremap tn :tabnew<CR>
