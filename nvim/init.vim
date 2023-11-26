call plug#begin('~/.config/nvim/plugged')
Plug 'sainnhe/everforest'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'onsails/lspkind-nvim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'godlygeek/tabular'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
call plug#end()
lua require('sub-arctic')

set termguicolors

lua require'colorizer'.setup()

set background=dark

let g:everforest_background = 'medium'
colorscheme everforest 

filetype plugin indent on

let g:vimtex_compiler_method = 'arara'

let g:vimtex_view_method = 'zathura'
let g:lightline = {'colorscheme' : 'everforest'}

let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

let g:vim_markdown_folding_disabled = 1

let g:vim_markdown_conceal = 0

let g:tex_conceal = ""
let g:vim_markdown_math = 1

let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format

let g:mkdp_auto_close = 0
let g:mkdp_browser = '/sbin/firefox'
highlight Comment cterm=italic gui=italic
augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

nnoremap <C-p> :Telescope find_files<Cr>

syntax on

set termguicolors

set tabstop=4
set softtabstop=4
set expandtab

set smartindent

set shiftwidth=4

set number

set numberwidth=4

set incsearch
set nohlsearch

set splitbelow
set splitright

set hidden

set scrolloff=8

set undofile

set mouse=a

set ignorecase
set smartcase

set noshowmode

set signcolumn=number

