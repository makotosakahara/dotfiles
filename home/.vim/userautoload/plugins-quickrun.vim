"let s:hooks = neobundle#get_hooks('vim-quickrun')
"function! s:hooks.on_source(bundle)
" ------------------------------    
let g:quickrun_config = {}
let g:quickrun_config._ = {
\   'runner': 'vimproc',
\   'runner/vimproc/updatetime': 10,
\   'outputter/buffer/running_mark': 'Running...',
\   'outputter/buffer/split': ':botright 12sp',
\   'outputter/buffer/close_on_empty': 1,
\}
"\   'hook/time/enable': 1,
"\   'hook/time/format': '\nFinished in %gsec'
" TODO Build script
function! s:StopQuickRun()
    if quickrun#is_running()
        call quickrun#sweep_sessions()
        echomsg "Quickrun sessions have been swept"
        let window_number = bufwinnr('\[quickrun output\]')
        " Move
        execute window_number . 'wincmd w'
        " Close
        close
    endif
endfunction
nnoremap <silent> <C-c> :call <SID>StopQuickRun()<CR>
" ------------------------------    
" python
let g:quickrun_config.python = {
\   'cmdopt' : '-u'
\}
" ------------------------------    
" LaTeX
let g:quickrun_config.tex = {
\   'command': 'latexmk',
\   'srcfile': '%:p',
\   'cmdopt': '-pv',
\   'exec': '%c %o %s',
\}
let g:tex_conceal = ""
"endfunction
