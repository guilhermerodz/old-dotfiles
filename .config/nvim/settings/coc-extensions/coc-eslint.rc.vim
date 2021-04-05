" Add :Prettier to trigger prettier extension command
command! -nargs=0 EslintAutofix :CocCommand eslint.executeAutofix

" Keybindings
func! EslintAutofix()
  echom "Autofixing with ESLint..."
  execute "EslintAutofix"
endfunc

nmap <leader>e :call EslintAutofix()<CR>
