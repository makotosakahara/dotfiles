set encoding=utf-8
set number " Display line numbers.
set scrolloff=10 " The number of lines above and below the cursor.
set nostartofline " Keep cursor in the same column.
set wrap " Word wrapping.
set backspace=indent,eol,start " Allow backspace.
set showmatch " Highlight matching parentheses.
set ignorecase " Case insensitive search.
set smartcase " Allow case sensitive search.
set incsearch " Incremental search.
set hlsearch " Highlight search matches.
set autoindent
set foldmethod=indent " Indentation-based folding.
set expandtab  " Don't use actual tab character.
set shiftwidth=4
set tabstop=4
set updatetime=100

" Enable True color support.
set t_Co=256
if (has("termguicolors"))
  set termguicolors
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
" Show Invisibles.
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<
" Disable beep.
set visualbell
set t_vb =
set noerrorbells
" No backup and swap files.
set nobackup
set nowritebackup
set noswapfile
set noundofile
" Spell checking except Japanese.
set spelllang+=cjk
set spell
hi clear SpellBad
hi SpellBad term=underline cterm=underline
hi clear SpellCap
hi SpellCap term=underline cterm=underline
hi clear SpellRare
hi SpellRare term=underline cterm=underline
hi clear SpellLocal
hi SpellLocal term=underline cterm=underline

"Set working directory to the current file.
autocmd BufEnter * silent! lcd %:p:h

let g:python_host_prog = ''
let g:python3_host_prog = $PYENV_ROOT . '/versions/miniconda3-latest/bin/python'
filetype plugin indent on
syntax enable
