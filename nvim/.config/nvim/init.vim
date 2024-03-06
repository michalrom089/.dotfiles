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
Plug 'mhinz/vim-startify'

" prettier
Plug 'sbdchd/neoformat'

Plug 'preservim/vimux'
Plug 'tpope/vim-commentary'
Plug 'ntpeters/vim-better-whitespace'

" markdown
Plug 'davidgranstrom/nvim-markdown-preview'

call plug#end()

"" Turn-on dracula color scheme
syntax on
colorscheme gruvbox

let g:coc_node_path = '/home/mromanow/.nvm/versions/node/v14.16.0/bin/node'

