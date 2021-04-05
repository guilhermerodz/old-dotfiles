"---------------------------------
" Appearance
"---------------------------------

" Color schemes
"Plug 'tomasiser/vim-code-dark'
"Plug 'nanotech/jellybeans.vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main'  }
Plug 'morhetz/gruvbox'

" Statusbar line
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" Tmux statusbar line
Plug 'edkolev/tmuxline.vim'

" Colorizer
Plug 'lilydjwg/colorizer'

"---------------------------------
" Writing behavior
"---------------------------------

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto pairs
Plug 'jiangmiao/auto-pairs'

" Code commenter
Plug 'preservim/nerdcommenter'

" Quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" Text alignment tool
Plug 'junegunn/vim-easy-align'

"---------------------------------
" Navigation behavior
"---------------------------------

" File system explorer (NERDTree)
"Plug 'scrooloose/nerdtree'
"Plug 'jistr/vim-nerdtree-tabs', { 'on':  'NERDTreeTabsToggle' }
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" File System Explorer (Fern)
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'

" Fuzzy find files
"Plug 'ctrlpvim/ctrlp.vim'

" Easy find and replace across multiple files
"Plug 'dkprice/vim-easygrep'

" Highly extendable fuzzy finder over lists
" This plugin has some requirements:
" NOTE: Vim version must be NVIM Nightly (>=0.5)
" NOTE: 'ripgrep' package must be installed
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Seamless navigation between tmux panes and vim splits
Plug 'christoomey/vim-tmux-navigator'

"---------------------------------
" Syntax
"---------------------------------

" NOTE: Vim version must be NVIM Nightly (>=0.5)
" NOTE: Don't forget to run ':TSInstall all'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Prisma (GraphQL)
Plug 'pantharshit00/vim-prisma'

" All the languages above are being covered by treesitter.

"" TypeScript
"Plug 'HerringtonDarkholme/yats.vim'

"" Json with comments
"Plug 'kevinoid/vim-jsonc'

"" JavaScript
"Plug 'yuezk/vim-js'

"" JSX
"Plug 'maxmellon/vim-jsx-pretty'

"" GraphQL
"Plug 'jparise/vim-graphql'

"---------------------------------
" Git
"---------------------------------

" Git wrapper
Plug 'tpope/vim-fugitive'

" Git commit browser. Depends on 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Git blamer inspired by VSCode's GitLens plugin
Plug 'APZelos/blamer.nvim'

" Diff markers
Plug 'airblade/vim-gitgutter'
