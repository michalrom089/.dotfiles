" enables syntax highlighting
syntax on

let mapleader = " "

" Better colors
set termguicolors

" number of spaces in a <Tab>
set tabstop=2
set softtabstop=2
set expandtab

" enable autoindents
set smartindent

" number of spaces used for autoindents
set shiftwidth=2

" adds line numbers
set number

" columns used for the line number
set numberwidth=4

" highlights the matched text pattern when searching
set incsearch
set nohlsearch

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

" disable default mode info
set noshowmode

" relative numbers
set relativenumber

" makes Neovim use the system's (i.e Window's) clipboard by default.
set clipboard=unnamedplus

" visible whitechars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:␣

set nofixendofline
set noendofline
