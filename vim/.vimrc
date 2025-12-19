" ~/.vimrc - Vim configuration

" Basic settings
set nocompatible              " Use Vim settings, not Vi
filetype plugin indent on     " Enable filetype detection
syntax on                     " Enable syntax highlighting

" Display settings
set number                    " Show line numbers
set relativenumber            " Show relative line numbers
set showcmd                   " Show command in bottom bar
set cursorline                " Highlight current line
set wildmenu                  " Visual autocomplete for command menu
set showmatch                 " Highlight matching brackets

" Search settings
set incsearch                 " Search as characters are entered
set hlsearch                  " Highlight matches
set ignorecase                " Ignore case in searches
set smartcase                 " Override ignorecase if search contains uppercase

" Indentation settings
set tabstop=4                 " Number of spaces per tab
set shiftwidth=4              " Number of spaces for autoindent
set expandtab                 " Convert tabs to spaces
set autoindent                " Copy indent from current line
set smartindent               " Smart autoindenting

" Performance
set lazyredraw                " Don't redraw while executing macros

" Backup and swap files
set nobackup                  " Don't create backup files
set noswapfile                " Don't create swap files
set nowritebackup             " Don't create backup before overwriting

" Line wrapping
set wrap                      " Wrap lines
set linebreak                 " Break lines at word boundaries

" Encoding
set encoding=utf-8            " Use UTF-8 encoding
set fileencoding=utf-8        " Save files as UTF-8

" Enable mouse support
set mouse=a                   " Enable mouse in all modes

" Clipboard
set clipboard=unnamedplus     " Use system clipboard

" Split settings
set splitbelow                " Horizontal splits open below
set splitright                " Vertical splits open to the right

" Status line
set laststatus=2              " Always show status line
set ruler                     " Show cursor position

" Key mappings
let mapleader = " "           " Set leader key to space

" Clear search highlighting
nnoremap <leader><space> :nohlsearch<CR>

" Navigate between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Buffer navigation
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bd :bdelete<CR>

" Save and quit shortcuts
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>x :x<CR>

" File explorer
nnoremap <leader>e :Explore<CR>
