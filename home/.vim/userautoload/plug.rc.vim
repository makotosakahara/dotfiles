" Automatic installation.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'itchyny/lightline.vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'cohama/lexima.vim'
Plug 'tyru/caw.vim'
Plug 'zchee/deoplete-jedi', { 'for': 'python' }
autocmd! User deoplete-jedi source ~/.vim/userautoload/deoplete-jedi.rc.vim

Plug 'jsfaint/gen_tags.vim', { 'for': 'python' }
autocmd! User gen_tags.vim source ~/.vim/userautoload/gen_tags.rc.vim

Plug '~/.zplug/repos/junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'simeji/winresizer'

Plug 'w0rp/ale'
Plug 'maximbaz/lightline-ale'

Plug 'skywind3000/asyncrun.vim', { 'for': 'python' }
autocmd! User asyncrun.vim source ~/.vim/userautoload/asyncrun.rc.vim

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }

Plug 'edkolev/tmuxline.vim', { 'on': 'Tmuxline' }
autocmd! User tmuxline.vim source ~/.vim/userautoload/tmuxline.rc.vim

Plug 'lervag/vimtex', { 'for': 'tex'}
autocmd! User vimtex source ~/.vim/userautoload/vimtex.rc.vim

" Always load the vim-devicons as the very last one.
Plug 'ryanoasis/vim-devicons'
call plug#end()

colorscheme challenger_deep

source ~/.vim/userautoload/deoplete.rc.vim
source ~/.vim/userautoload/caw.rc.vim
source ~/.vim/userautoload/winresizer.rc.vim
source ~/.vim/userautoload/ale.rc.vim
source ~/.vim/userautoload/lightline.rc.vim
source ~/.vim/userautoload/vim-gitgutter.rc.vim
source ~/.vim/userautoload/vim-devicons.rc.vim
