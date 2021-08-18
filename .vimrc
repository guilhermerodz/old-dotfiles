"---------------------------------
" Options
"---------------------------------

" Show relative line numbers but keep absolute number
" for the current line
set number
set relativenumber

" Enables automatic C program indenting
set cindent

" Always uses spaces instead of tab characters
set expandtab

" Show (partial) command in the last line of the screen
set showcmd

" Number of spaces that a <tab> in the file counts for
set tabstop=2
set shiftwidth=2

" Highlight unwanted spaces
set list

" Add ruler at specified column number
" set colorcolumn=80

" Prevent line wrap
set nowrap

" Set tab label to show tab filename and '+' if modified
:set guitablabel=\ %t\ %M

" Highlight current line
set cursorline

" Keep N lines visible around the cursor position for X and Y axis
set scrolloff=20
set sidescrolloff=30

" Make case insensitive search default
set ic

" Other settings
set smarttab

"---------------------------------
" Keybindings
"---------------------------------

" Split window
nmap ss :split<CR><C-w>w
nmap sv :vsplit<CR><C-w>w

" Navigate between windows
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" Add convenient "clipboard copy/paste" shortcuts
noremap <leader>y "+y
noremap <leader>p "+p
noremap <leader>Y "*y
noremap <leader>P "*p

" Switch tabs (previous and next)
nmap <silent> <tab>h :tabprev<CR>
nmap <silent> <tab>l :tabnext<CR>

" Change current tab position (previous and next)
nmap <silent> <tab>k :-tabmove<CR>
nmap <silent> <tab>j :+tabmove<CR>

" Toggle word wrap
nnoremap <silent> <leader>w :set wrap!<cr>

" Keep in visual mode after indenting
vnoremap < <gv
vnoremap > >gv

" Fast indent current line in normal mode
nnoremap < <<Space>
nnoremap > ><Space>

" Add 'go to buffer' command
nnoremap gb :ls<CR>:b<Space>

" Toggle between last edited file
nnoremap gl :e #<CR>
nnoremap <leader>\ :e #<CR>

" Remove previous search highlight
nnoremap <leader>/ :noh<CR>

"---------------------------------
" JK Trick
"---------------------------------

" Typing 'jk' in insert mode equals to <Esc>
inoremap jk <Esc>

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')