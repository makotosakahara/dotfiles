set -U fish_greeting

set path $HOME/miniconda3
if test -f $path/bin/conda
    eval $path/bin/conda shell.fish hook $argv | source
else
    if test -f $path/etc/fish/conf.d/conda.fish
        . $path/etc/fish/conf.d/conda.fish
    else
        set -x PATH $path/bin $PATH
    end
end
set --erase path

abbr --add l lsd
abbr --add ll lsd -la
abbr --add lt lsd --tree

set path $HOME/.local/share/nvim/lazy/tokyonight.nvim/extras/fish/tokyonight_moon.fish
if test -f $path
    . $path
end
set --erase path

zoxide init fish | source
starship init fish | source
