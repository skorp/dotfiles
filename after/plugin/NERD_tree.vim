map <C-n> :NERDTreeToggle<CR>
if exists("loaded_nerd_tree")
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


    "Close NERDTree if it is the last open buffer
    autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

    " Close all open buffers on entering a window if the only
    " buffer that's left is the NERDTree buffer
    function! s:CloseIfOnlyNerdTreeLeft()
      if exists("t:NERDTreeBufName")
        if bufwinnr(t:NERDTreeBufName) != -1
          if winnr("$") == 1
            q
          endif
        endif
      endif
    endfunction
endif