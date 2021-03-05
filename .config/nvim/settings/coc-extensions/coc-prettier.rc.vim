" Add :Prettier as CoC command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Keybindings
nmap <leader>f :Prettier<Enter>