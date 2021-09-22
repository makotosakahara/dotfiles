set fish_greeting

# Tokyo Night
set fish_color_autosuggestion 565f89    # Comments
set fish_color_error f7768e             # Terminal Red
set fish_color_end 7dcfff               # Terminal Cyan
set fish_color_command 7aa2f7           # Terminal Blue
set fish_color_param 7aa2f7             # Terminal Blue
set fish_color_operator 7dcfff          # Terminal Cyan

eval $HOME/miniconda3/bin/conda "shell.fish" "hook" $argv | source
