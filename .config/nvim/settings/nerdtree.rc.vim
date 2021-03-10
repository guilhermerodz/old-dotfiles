"---------------------------------
" NERDTree Variables
"---------------------------------

" Show hidden files by default
let g:NERDTreeShowHidden=1

" Hide modules and unused folders
let g:NERDTreeIgnore = ['^node_modules$']

" Include flags
let g:NERDTreeGitStatusWithFlags = 1

" Start NERDTree in minimal UI mode (No help lines)
let g:NERDTreeMinimalUI = 1

" Display arrows instead of ascii art in NERDTree
let g:NERDTreeDirArrows = 1

" Close NERDTree after file was opened
let g:NERDTreeQuitOnOpen = 1

" Tells the NERDTree to automatically remove
" a buffer when a file is being deleted or renamed via
" a context menu command.
let g:NERDTreeAutoDeleteBuffer = 1

" Unused variables
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ 'Staged'    : '#0ee375',
    "\ 'Modified'  : '#d9bf91',
    "\ 'Renamed'   : '#51C9FC',
    "\ 'Untracked' : '#FCE77C',
    "\ 'Unmerged'  : '#FC51E6',
    "\ 'Dirty'     : '#FFBD61',
    "\ 'Clean'     : '#87939A',
    "\ 'Ignored'   : '#808080'
    "\ }
"let g:NERDTreeGitStatusIndicatorMapCustom = {
    "\ 'Modified'  :'✹',
    "\ 'Staged'    :'✚',
    "\ 'Untracked' :'✭',
    "\ 'Renamed'   :'➜',
    "\ 'Unmerged'  :'═',
    "\ 'Deleted'   :'✖',
    "\ 'Dirty'     :'✗',
    "\ 'Ignored'   :'☒',
    "\ 'Clean'     :'✔︎',
    "\ 'Unknown'   :'?',
    "\ }

"---------------------------------
" Keybindings
"---------------------------------

nmap <C-n> :NERDTreeToggle<CR>

"---------------------------------
" Functions as preferences
"---------------------------------

" Open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree

" Sync open file with NERDTree
" Check if NERDTree is open or active
"function! IsNERDTreeOpen()        
  "return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
"endfunction

" Call NERDTreeFind if NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
"function! SyncTree()
  "if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    "NERDTreeFind
    "wincmd p
  "endif
"endfunction

" Highlight currently open buffer in NERDTree
"autocmd BufEnter * call SyncTree()
