" Japanese IME
if executable('zenhan')
    augroup zenhan
        autocmd!
        au InsertLeave * :call system('zenhan 0')
    augroup END
endif