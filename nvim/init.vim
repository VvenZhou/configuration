set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set wildmode=longest,list   " get bash-like tab completions
"set cc=80                  " set an 80 column border for good coding style
"set clipboard=unnamedplus   " using system clipboard
set ttyfast                 " Speed up scrolling in Vim
set backupdir=~/.cache/vim " Directory to store backup files.
set number
set hlsearch
set ruler
set encoding=utf-8
highlight Comment ctermfg=green
set showcmd
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

filetype indent on
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

" set ignorecase              " case insensitive 
" set mouse=v                 " middle-click paste with 
" set incsearch               " incremental search
" set spell                 " enable spell check (may need to download language package)



call plug#begin(stdpath('data') . '/plugged')

" Use yay -S ctags-git to install universal-ctags instead
" Plug 'universal-ctags/ctags' 

Plug 'ludovicchabant/vim-gutentags'
Plug 'tomasiser/vim-code-dark'

call plug#end()




" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']


syntax on
set t_Co=256
set background=dark
set cursorline              " highlight current cursorline

"let g:airline_theme = 'codedark'
colorscheme codedark
