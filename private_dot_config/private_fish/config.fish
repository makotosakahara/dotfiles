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

abbr --add ls lsd
abbr --add l lsd -la
abbr --add lt lsd --tree
functions --erase la ll

zoxide init fish | source
starship init fish | source
