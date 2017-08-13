# ============================================================
setopt prompt_subst
autoload colors
colors

local current_dir="%{$fg[magenta]%}[%~]%{$reset_color%}"$'\n'
local user="%{$fg[green]%}%n%{$reset_color%}"
local host="%{$fg[blue]%}%m%{$reset_color%}"
local mark="%{$fg[yellow]%}%(!,#,$)%{$reset_color%}"

PROMPT="$current_dir$user%{$fg[yellow]%}@%{$reset_color%}$host $mark "
PROMPT2="%_%(!,#,$) "
SPROMPT="%r is correct? [n,y,a,e]: "
RPROMPT="%{$fg[cyan]%}%D %*%{$reset_color%}"

eval $(dircolors $HOME/.dir_colors)
# ============================================================
# Command History
HISTFILE=~/.zsh_history
HISTSIZE=4096
SAVEHIST=4096

setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history
setopt append_history

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
# ============================================================
# Other Settings
setopt nobeep

# Vim key-bind
bindkey -v

autoload -U compinit
compinit

setopt auto_cd
setopt auto_pushd

setopt correct
setopt nolistbeep

# Notify background job
setopt notify
# ============================================================
# Aliases
source ${ZDOTDIR}/.zshaliases
# ============================================================
# fzf
[ -f ${ZDOTDIR}/.fzf.zsh ] && source ${ZDOTDIR}/.fzf.zsh
# ============================================================
# Auto recompile
if [ ${ZDOTDIR}/.zshrc -nt ${ZDOTDIR}/.zshrc.zwc ]; then
    zcompile ${ZDOTDIR}/.zshrc
fi
