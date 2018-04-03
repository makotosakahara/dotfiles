let g:vimtex_compiler_latexmk = {
\  'background' : 1,
\  'build_dir' : '',
\  'callback' : 1,
\  'continuous' : 1,
\  'executable' : 'latexmk',
\  'options' : [
\    '-pdfdvi',
\    '-verbose',
\    '-file-line-error',
\    '-synctex=1',
\    '-interaction=nonstopmode',
\  ],
\}
let g:vimtex_view_general_viewer = 'evince'
