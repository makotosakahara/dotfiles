# ============================================================
case "${OSTYPE}" in
    darwin*)
        if [[ -d /Applications/MacVim.app ]]; then
            alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
            alias vi=vim
            export EDITOR=vim
        fi
        ;;

    *) 
        ;;
esac
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
# Alias
case "${OSTYPE}" in
    freebsd*|darwin*)
        alias la="ls -al -G -F"
        alias ls="ls -G"
        ;;
    linux*)
        alias la="ls -al --color=auto -F"
        alias ls="ls --color=auto"
        ;;
esac
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
# peco
function exists { which $1 &> /dev/null }

if exists peco; then
    function peco_select_history() {
        local tac
        exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
        BUFFER=$(fc -l -n 1 | eval $tac | peco --query "$LBUFFER")
        CURSOR=$#BUFFER         # move cursor
        zle -R -c               # refresh
    }
    zle -N peco_select_history
    bindkey '^R' peco_select_history
fi
