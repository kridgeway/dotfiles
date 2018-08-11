syntax on
set nu
set ai sw=2 sts=2 et ts=2
set rtp+=~/.vim/bundle/Vundle.vim
filetype off
syntax enable
set background=dark
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Bundle 'klen/python-mode'
Bundle 'altercation/vim-colors-solarized'
call vundle#end()
filetype plugin indent on

" set t_Co=256
" let g:solarized_termcolors=256
colorscheme solarized

let mapleader = ","
set wildmode=list:longest

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set showmatch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set visualbell
"set cursorline
set ttyfast
set ruler
set laststatus=2
"set relativenumber
"set undofile


" Intuitive backspacing in insert mode
set backspace=indent,eol,start
 
" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
filetype on
filetype plugin on
filetype indent on
 
" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.

"map <silent> w <Plug>CamelCaseMotion_w
"map <silent> b <Plug>CamelCaseMotion_b
"map <silent> e <Plug>CamelCaseMotion_e
"sunmap w
"sunmap b
"sunmap e

map <C-J> <C-W>j<C-W>
map <C-K> <C-W>k<C-W>

" Complete options (disable preview scratch window)
set completeopt=menu,menuone,longest
" Limit popup menu height
set pumheight=15

" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType="context"

" Disable auto popup, use <Tab> to autocomplete
" let g:clang_complete_auto=0
" Show clang errors in the quickfix window
" let g:clang_complete_copen=1
"
let g:vim_markdown_folding_disabled=1

"set statusline=%{fugitive#statusline()}
"set statusline+=:
"set statusline+=%t       "tail of the filename
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
"set statusline+=%{&ff}] "file format
"set statusline+=%h      "help file flag
"set statusline+=%m      "modified flag
"set statusline+=%r      "read only flag
"set statusline+=%y      "filetype
"set statusline+=%=      "left/right separator
"set statusline+=%c,     "cursor column
"set statusline+=%l/%L   "cursor line/total lines
"set statusline+=\ %P    "percent through file

set statusline=   " clear the statusline for when vimrc is reloaded
" set statusline+=%{fugitive#statusline()}
set statusline+=%-3.3n\                      " buffer number
set statusline+=%-40f
set statusline+=%h%m%r%w                     " flags
"set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
"set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
"set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

nnoremap <F8> :setl noai nocin nosi inde=<CR>

let g:pymode_rope = 0
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = 0 "g:pymode_syntax_all
let g:pymode_lint = 0
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_write = 0
let g:pymode_virtualenv = 1
let g:pymode_options_colorcolumn = 0
" let g:pymode_breakpoint = 1
"
set foldlevelstart=20
