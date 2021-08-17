" Show hidden files
let g:ctrlp_show_hidden = 1

" Ignore modules and unused files
  let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|node_modules',
  \ 'file': '\.DS_Store$'
  \ }

" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Jump to an open buffer if already opened
let g:ctrlp_switch_buffer = 1
