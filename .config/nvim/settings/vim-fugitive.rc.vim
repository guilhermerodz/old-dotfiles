function! ToggleFugitiveDiff()
  try
    if &diff == "nodiff"
      exec 'Gvdiffsplit'

      echom 'Entering vim-fugitive diff...'
    else
      let currentWinNr = winnr()
      execute currentWinNr . 'wincmd h'
      execute currentWinNr . 'wincmd c'

      echom 'Exiting vim-fugitive diff...'
    endif
  catch
    echom 'Not a git repository!'
  endtry
endfunction

nnoremap <leader>gd :call ToggleFugitiveDiff()<cr>

" Always open Git Diff editor in vertical split
ca Gdiff Gvdiffsplit
