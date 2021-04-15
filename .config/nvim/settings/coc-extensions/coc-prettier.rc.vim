" Add :Prettier to trigger prettier extension command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Add :Format command to trigger format action
command! -nargs=0 Format :call CocAction('format')

let g:prettierSupportedFiletypes = [
  \ 'javascript',
  \ 'mongo',
  \ 'javascript',
  \ 'javascriptreact',
  \ 'typescript',
  \ 'typescriptreact',
  \ 'json',
  \ 'json',
  \ 'jsonc',
  \ 'json5',
  \ 'css',
  \ 'postcss',
  \ 'less',
  \ 'scss',
  \ 'handlebars',
  \ 'graphql',
  \ 'markdown',
  \ 'mdx',
  \ 'html',
  \ 'html',
  \ 'html',
  \ 'vue',
  \ 'yaml',
  \ 'ansible',
  \ 'home-assistant',
  \ ]

" Keybindings
func! TryFormat()
  let filetype = &filetype

  let isSupportedByPrettier = index(g:prettierSupportedFiletypes, filetype) >= 0

  if isSupportedByPrettier
    echom "Formatting with Prettier..."
    execute "Prettier"
  else
    echom "Formatting with CoC..."
    execute "Format"
  endif
endfunc

nmap <leader>f :call TryFormat()<CR>

" Remap for format selected region (visual and select mode)
vmap <leader>f <Plug>(coc-format-selected)
