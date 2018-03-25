let g:ale_sign_column_always = 2

let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'

let g:ale_fix_on_save = 1

let g:ale_linters = {
\  'python': ['flake8'],
\}
let g:ale_fixers = {
\  'python': ['autopep8', 'yapf'],
\}
