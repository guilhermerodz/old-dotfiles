" Custom settings and mappings.
let g:fern#disable_default_mappings = 1

" Show hidden files by default.
let g:fern#default_hidden = 1

" Nerdfont integration (plugin: fern-renderer-nerdfont)
let g:fern#renderer = "nerdfont"

function! RevealCurrentFileInFern()
  let currentBufferName = expand('%:p')
  if stridx(currentBufferName, 'fern://') == -1
    exec 'Fern . -reveal=%'
  else
    echom "You're already editing a Fern buffer!"
  endif
endfunction

noremap <silent> <Leader>r :call RevealCurrentFileInFern()<CR>

function! FernInit() abort
  nmap <buffer><expr>
    \ <Plug>(fern-my-open-expand-collapse)
    \ fern#smart#leaf(
    \   "\<Plug>(fern-action-open:select)",
    \   "\<Plug>(fern-action-expand)",
    \   "\<Plug>(fern-action-collapse)",
    \ )
  nmap <buffer> o <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> ma <Plug>(fern-action-new-path)
  nmap <buffer> md <Plug>(fern-action-remove)
  nmap <buffer> mm <Plug>(fern-action-move)
  nmap <buffer> mM <Plug>(fern-action-rename)
  nmap <buffer> mh <Plug>(fern-action-hidden-toggle)
  nmap <buffer> mr <Plug>(fern-action-reload)
  nmap <buffer> mk <Plug>(fern-action-mark:toggle)
  nmap <buffer> i <Plug>(fern-action-open:split)
  nmap <buffer> s <Plug>(fern-action-open:vsplit)
  nmap <buffer><nowait> C <Plug>(fern-action-leave)
  nmap <buffer><nowait> u <Plug>(fern-action-enter)
endfunction

augroup FernGroup
  autocmd!
  autocmd FileType fern call FernInit()
augroup END
