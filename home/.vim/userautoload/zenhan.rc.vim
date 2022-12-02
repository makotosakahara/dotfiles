" Japanese IME
if executable('zenhan.exe')
    augroup zenhan
        autocmd!
        au InsertLeave * :call system('zenhan.exe 0')
    augroup END
endif
