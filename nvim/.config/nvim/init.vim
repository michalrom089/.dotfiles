call plug#begin('~/.config/nvim/plugged')

Plug 'dracula/vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'nvim-telescope/telescope-symbols.nvim'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'

Plug 'gruvbox-community/gruvbox'
Plug 'ryanoasis/vim-devicons'

" prettier
Plug 'sbdchd/neoformat'

call plug#end()

"" Turn-on dracula color scheme
syntax on
colorscheme gruvbox

