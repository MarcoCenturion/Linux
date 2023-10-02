call plug#begin(stdpath('data').'/plugged')

" tema
Plug 'sainnhe/gruvbox-material'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'williamboman/nvim-lsp-installer'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'williamboman/mason.nvim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'ryanoasis/vim-devicons'

" Plugin completion para lua
Plug 'nvim-lua/completion-nvim'
Plug 'honza/vim-snippets'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'mechatroner/rainbow_csv'

" Plugin para markdown
" Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'

" Taglist
Plug 'vim-scripts/taglist.vim'

" Python LSP server
Plug 'python-lsp/python-lsp-server'

" Other themes
Plug 'morhetz/gruvbox'
Plug 'ironcamel/vim-script-runner', {'for': ['sh', 'python']}
Plug 'akinsho/toggleterm.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
" Plug 'nvim-telescope/telescope-nvim', { 'branch': '0.1.x'}

call plug#end()
