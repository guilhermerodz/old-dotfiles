" Add :Prettier to trigger prettier extension command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Add :Format command to trigger format action
command! -nargs=0 Format :call CocAction('format')

" Keybindings
func! TryFormat()
  let filetype = &filetype
  if filetype == 'prisma'
    echom "Formatting with CoC..."
    execute "Format"
  else
    echom "Formatting with Prettier..."
    execute "Prettier"
  endif
endfunc

nmap <leader>f :call TryFormat()<CR>

" Remap for format selected region (visual and select mode)
vmap <leader>f <Plug>(coc-format-selected)
