set -U fish_greeting

fish_config theme choose catppuccin-mocha --color-theme=dark

abbr --add ls eza --icons --group-directories-first
abbr --add l eza -la --color-scale --icons --group-directories-first
abbr --add lt eza --tree --icons --group-directories-first
functions --erase la ll

mise activate fish | source

# Prevent conflicts with patrickf1/fzf.fish.
set -gx FZF_CTRL_R_COMMAND
fzf --fish | source

zoxide init fish | source

starship init fish | source
