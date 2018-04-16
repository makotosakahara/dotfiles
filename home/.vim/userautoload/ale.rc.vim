let g:ale_sign_column_always = 2
let g:ale_sign_error = "\uf119"
let g:ale_sign_warning = "\uf11a"
hi link ALEErrorSign    Error
hi link ALEWarningSign  WarningMsg

let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'

let g:ale_fix_on_save = 1

let g:ale_linters = {
\  'python': ['flake8'],
\  'yaml': ['yamllint']
\}
let g:ale_fixers = {
\  'python': ['autopep8', 'yapf', 'isort'],
\}

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
