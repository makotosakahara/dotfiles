" Automatic installation
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
source ~/.vim/userautoload/coc.rc.vim

Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'cohama/lexima.vim'
Plug 'tyru/caw.vim'
source ~/.vim/userautoload/caw.rc.vim
Plug 'Konfekt/FastFold'
source ~/.vim/userautoload/fastfold.rc.vim
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'itchyny/lightline.vim'
source ~/.vim/userautoload/lightline.rc.vim

" on demand
Plug 'skywind3000/asyncrun.vim', { 'for': 'python' }
autocmd! User asyncrun.vim source ~/.vim/userautoload/asyncrun.rc.vim
" https://github.com/junegunn/vim-plug/issues/785
Plug 'lervag/vimtex'
autocmd! User vimtex source ~/.vim/userautoload/vimtex.rc.vim
Plug 'simeji/winresizer', { 'on': 'WinResizerStartResize' }
autocmd! User winresizer source ~/.vim/userautoload/winresizer.rc.vim
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }
Plug 'edkolev/tmuxline.vim', { 'on': 'Tmuxline' }
autocmd! User tmuxline.vim source ~/.vim/userautoload/tmuxline.rc.vim

" Always load the vim-devicons as the very last one.
Plug 'ryanoasis/vim-devicons'
source ~/.vim/userautoload/vim-devicons.rc.vim

call plug#end()

colorscheme challenger_deep
" https://github.com/jwilm/alacritty/issues/1082
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE
