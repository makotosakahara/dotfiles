# Setup fzf
# ---------
if [[ ! "$PATH" == */home/makoto/.fzf/bin* ]]; then
  export PATH="$PATH:/home/makoto/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/makoto/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/makoto/.fzf/shell/key-bindings.zsh"

