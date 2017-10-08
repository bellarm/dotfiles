"""""""""""""""""""""""""""""""" install Vim Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()

" vim sensible to make things more sensible
Plug 'tpope/vim-sensible'

" status plugins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" colors plugins
Plug 'MaxSt/FlatColor'                      " flatcolor
Plug 'mhartington/oceanic-next'             " OceanicNext
Plug 'CallumHoward/vim-neodark'
" color generator
Plug 'dylanaraps/wal.vim'

" autocomplete plugins
Plug 'Shougo/deoplete.nvim',
        \ { 'do': ':UpdateRemotePlugins' }  " completion
Plug 'mattn/emmet-vim'                      " for html/css/js
Plug 'zchee/deoplete-jedi'                  " for python
Plug 'zchee/deoplete-clang'                 " for c/c++
Plug 'artur-shaik/vim-javacomplete2'        " for java

" git gutter
Plug 'airblade/vim-gitgutter'

call plug#end()
"""""""""""""""""""""""""""""""" end of vim-plug

" turn on line numbers
set relativenumber
set number

" highlight current line
set cursorline
" wrap line following its indent level
set breakindent

" turn on syntax highlighting
syntax enable
filetype plugin indent on

" default indentation
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set autoindent

" indentation for specific filetype
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2
autocmd Filetype css setlocal shiftwidth=2 tabstop=2
autocmd FileType markdown setlocal shiftwidth=2 tabstop=2
autocmd FileType tex setlocal shiftwidth=2 tabstop=2
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2

" colors for nvim
set background=dark
set termguicolors
colo OceanicNext
set colorcolumn=80

" syntax highlighting for python
let python_highlight_all=1

" color for vim airline
let g:airline_theme='base16_ashes'

" turn on autocomplete
let g:deoplete#enable_at_startup=1

" clang path for c/c++ completion
let g:deoplete#sources#clang#libclang_path=
            \'/usr/lib/llvm-3.8/lib/libclang.so.1'
let g:deoplete#sources#clang#clang_header=
            \'/usr/include/clang/3.8.0/include/'

" get rid of preview window
set completeopt-=preview

" need to highlight trailing spaces

" map kj to <Esc> in insert mode
inoremap kj <Esc>

" map alt to change tab
noremap <A-.> gt
noremap <A-,> gT
noremap <A-1> 1gt
noremap <A-2> 2gt
noremap <A-3> 3gt
noremap <A-4> 4gt
noremap <A-5> 5gt

" map Ctrl+s to save and close
noremap <C-s> :wq<Return>

" enable mouse
set mouse=a

" make neovim transparent
highlight Normal guibg=none
highlight NonText guibg=none

" turn off vim-gitgutter
"let g:gitgutter_enabled=0

" change the symbol for gitgutter
let g:gitgutter_sign_added='▌'
let g:gitgutter_sign_modified='▌'
let g:gitgutter_sign_removed='▌'
let g:gitgutter_sign_removed_first_line='▌'
let g:gitgutter_sign_modified_removed='▌'

set clipboard=unnamedplus

" java autocomplete settings
set omnifunc=syntaxcomplete#Complete
autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'
let g:deoplete#auto_completion_start_length = 2
let g:deoplete#sources = {}
let g:deoplete#sources._ = []
let g:deoplete#file#enable_buffer_path = 1

