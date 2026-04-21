set -U fish_greeting

fish_config theme choose catppuccin-mocha --color-theme=dark

abbr --add ls lsd
abbr --add l lsd -la
abbr --add lt lsd --tree
functions --erase la ll

mise activate fish | source

# Prevent conflicts with patrickf1/fzf.fish.
set -gx FZF_CTRL_R_COMMAND
fzf --fish | source

zoxide init fish | source
starship init fish | source
