" Always call :Gvdiffsplit (vertical split) instead of default :Gdiff
ca Gdiff Gvdiffsplit

" Always open Fugitive buffers in readonly mode
augroup FugitiveGroup
  autocmd!
  autocmd BufReadPost fugitive://* setlocal nomodifiable readonly
augroup END
