"""""""""""""""""""""""""""""""" Install Vim Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()

" Status plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Colors plugins
Plug 'MaxSt/FlatColor'                      " flatcolor
Plug 'mhartington/oceanic-next'             " OceanicNext
Plug 'CallumHoward/vim-neodark'
" Color generator
Plug 'dylanaraps/wal.vim'

" Syntax plugins
Plug 'Shougo/deoplete.nvim', 
        \ { 'do': ':UpdateRemotePlugins' }  " completion
Plug 'mattn/emmet-vim'                      " for html/css/js
Plug 'zchee/deoplete-jedi'                  " for python
Plug 'zchee/deoplete-clang'                 " for c/c++

call plug#end()
"""""""""""""""""""""""""""""""" End of vim-plug

" Turn on line numbers
set relativenumber
set number

" No wrap line
set nowrap
set linebreak

" Turn on syntax highlighting
syntax enable
filetype plugin indent on

" Indentation
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set autoindent

" Colors for nvim
set termguicolors
colo OceanicNext

" Indentation for specific filetype
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2
autocmd Filetype css setlocal shiftwidth=2 tabstop=2
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2

" Syntax highlighting for python
let python_highlight_all=1

" Color for vim airline
let g:airline_theme='base16_ashes'

" Turn on autocomplete
let g:deoplete#enable_at_startup=1

" Clang path for c/c++ completion
let g:deoplete#sources#clang#libclang_path='/usr/lib/llvm-3.8/lib/libclang.so.1'
let g:deoplete#sources#clang#clang_header='/usr/include/clang/3.8.0/include/'

" Get rid of preview window
set completeopt-=preview

