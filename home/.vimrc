if exists('g:vscode')
    " --------------------mapping
    source ~/.vim/userautoload/mapping.vscode.rc.vim
    " Settings available in VSCode.
    " Word wrapping.
    " set wrap
    "

else
@REM     source ~/.vim/userautoload/core.rc.vim
    source ~/.vim/userautoload/mapping.rc.vim
@REM     source ~/.vim/userautoload/template.rc.vim
@REM     source ~/.vim/userautoload/plug.rc.vim
endif

" --------------------japanese ime
if executable('zenhan')
    augroup zenhan
        autocmd!
        au InsertLeave * :call system('zenhan 0')
    augroup END
endif
