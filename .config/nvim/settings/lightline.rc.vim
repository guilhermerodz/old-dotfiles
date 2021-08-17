let g:lightline = {
  \ 'colorscheme': 'gruvbox',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'my_fugitive', 'my_readonly', 'my_filename', 'my_modified' ],
  \             [ 'coc_info', 'coc_hints', 'coc_errors', 'coc_warnings', 'coc_ok' ],
  \             [ 'coc_status' ]
  \           ],
  \   'right': [ ['lineinfo'],
  \              ['percent'],
  \              ['charcode', 'fileformat', 'filetype'],
  \            ]
  \ },
  \ 'inactive': {
  \   'left': [ [ 'my_fugitive', 'my_readonly', 'my_filename', 'my_modified' ] ]
  \ },
  \ 'component': {
  \   'filename': '%f'
  \ },
  \ 'component_function': {
  \   'my_filename': 'MyFilename',
  \   'my_fugitive': 'MyFugitive',
  \   'my_readonly': 'MyReadonly',
  \   'my_modified': 'MyModified',
  \ },
  \ 'component_expand': {
  \   'coc_warnings': 'lightline#coc#warnings',
  \   'coc_errors': 'lightline#coc#errors',
  \   'coc_info': 'lightline#coc#info',
  \   'coc_hints': 'lightline#coc#hints',
  \   'coc_ok': 'lightline#coc#ok',
  \   'coc_status': 'lightline#coc#status',
  \ },
  \ 'component_type': {
  \   'coc_warnings': 'warning',
  \   'coc_errors': 'error',
  \   'coc_info': 'info',
  \   'coc_hints': 'hints',
  \   'coc_ok': 'left',
  \ },
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' }
  \ }

function! MyFilename()
  if &filetype == 'fern'
    return 'Tree viewer'
  else
    let nerdfontIcon = nerdfont#find(expand('%:p'))
    let relativeFilename = @%
    return nerdfontIcon . ' ' . relativeFilename
  endif
endfunction

function! MyModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! MyReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "\u2b64"
  else
    return ""
  endif
endfunction

function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? ' '._ : ''
  endif
  return ''
endfunction

"---------------------------------
" Integration (extension): 'lightline-bufferline'
"---------------------------------

" 1. Add the following properties & values to g:lightline:
"
" {
"   ...
"   'tabline': {
"     ...
"     'left': [ ['buffers'] ],
"   }
"   'component_type': {
"     ...
"     'buffers': 'tabsel',
"   }
"   'component_expand': {
"     ...
  "   'buffers': 'lightline#bufferline#buffers',
"   }
" }
"
" 2. Uncomment the following lines
"
" set showtabline=2

" let g:lightline#bufferline#show_number = 2
" let g:lightline#bufferline#enable_nerdfont = 1
" let g:lightline#bufferline#unnamed = 'Unnamed buffer'

" " Navigate to specific buffer
" nmap <leader>1 <Plug>lightline#bufferline#go(1)
" nmap <leader>2 <Plug>lightline#bufferline#go(2)
" nmap <leader>3 <Plug>lightline#bufferline#go(3)
" nmap <leader>4 <Plug>lightline#bufferline#go(4)
" nmap <leader>5 <Plug>lightline#bufferline#go(5)
" nmap <leader>6 <Plug>lightline#bufferline#go(6)
" nmap <leader>7 <Plug>lightline#bufferline#go(7)
" nmap <leader>8 <Plug>lightline#bufferline#go(8)
" nmap <leader>9 <Plug>lightline#bufferline#go(9)
" nmap <leader>0 <Plug>lightline#bufferline#go(10)

" " Close specific buffer
" nmap <Leader>c1 <Plug>lightline#bufferline#delete(1)
" nmap <Leader>c2 <Plug>lightline#bufferline#delete(2)
" nmap <Leader>c3 <Plug>lightline#bufferline#delete(3)
" nmap <Leader>c4 <Plug>lightline#bufferline#delete(4)
" nmap <Leader>c5 <Plug>lightline#bufferline#delete(5)
" nmap <Leader>c6 <Plug>lightline#bufferline#delete(6)
" nmap <Leader>c7 <Plug>lightline#bufferline#delete(7)
" nmap <Leader>c8 <Plug>lightline#bufferline#delete(8)
" nmap <Leader>c9 <Plug>lightline#bufferline#delete(9)
" nmap <Leader>c0 <Plug>lightline#bufferline#delete(10)

