" ------------------------------
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set t_Co=256
" ------------------------------
" Display
set number
set showmatch
set wrap
set colorcolumn=80
" Show Invisibles
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<
" Disable beep
set visualbell
set t_vb =
set noerrorbells
" ------------------------------
" Edit
" Set working directory to the current file
autocmd BufEnter * silent! lcd %:p:h
set autoindent
set shiftwidth=4
set tabstop=4
set expandtab
" Backspace and delete problems
set backspace=indent,eol,start
" Reverse indent
imap <S-Tab> <Esc><<i
" Disable back up and swap
set nobackup
set nowritebackup
set noswapfile
set noundofile
" Spell checking except Japanese
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
" ------------------------------
" Search
set ignorecase
set smartcase
set incsearch
set hlsearch

