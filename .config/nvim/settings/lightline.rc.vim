let g:lightline = {
  "\ 'colorscheme': 'default',
  \ 'colorscheme': 'material_vim',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'fugitive', 'readonly', 'filename', 'modified' ]
  \           ],
  \   'right': [
  \     ['lineinfo'],
  \     ['percent'],
  \     ['charcode', 'fileformat', 'filetype'],
  \   ]
  \ },
  \ 'inactive': {
  \   'left': [ [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component': {
  \   'filename': '%f'
  \ },
  \ 'component_function': {
  \   'fugitive': 'MyFugitive',
  \   'readonly': 'MyReadonly',
  \   'modified': 'MyModified',
  \ },
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' }
  \ }

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

set noshowmode
