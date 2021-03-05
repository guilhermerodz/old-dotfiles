"---------------------------------
" Appearance
"---------------------------------

" Color schemes
"Plug 'tomasiser/vim-code-dark'
"Plug 'nanotech/jellybeans.vim'
Plug 'kaicataldo/material.vim', { 'branch': 'main'  }
"Plug 'morhetz/gruvbox'

" Statusbar line
"Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'

" Tmux statusbar line
Plug 'edkolev/tmuxline.vim'

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

"---------------------------------
" Navigation behavior
"---------------------------------

" File system explorer (NERDTree)
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs', { 'on':  'NERDTreeTabsToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Fuzzy find files
Plug 'ctrlpvim/ctrlp.vim'

" Easy find and replace across multiple files
"Plug 'dkprice/vim-easygrep'

" Seamless navigation between tmux panes and vim splits
Plug 'christoomey/vim-tmux-navigator'

"---------------------------------
" Syntax
"---------------------------------

" TypeScript
Plug 'HerringtonDarkholme/yats.vim'

" Json with comments
Plug 'kevinoid/vim-jsonc'

" JavaScript
Plug 'yuezk/vim-js'
"Plug 'pangloss/vim-javascript'
"Plug 'jelera/vim-javascript-syntax'

" JSX
Plug 'maxmellon/vim-jsx-pretty'

" GraphQL
Plug 'jparise/vim-graphql'

"---------------------------------
" Git
"---------------------------------

" Git wrapper
Plug 'tpope/vim-fugitive'

" Git commit browser. Depends on 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Diff markers
Plug 'airblade/vim-gitgutter'
