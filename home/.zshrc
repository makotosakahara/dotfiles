# ============================================================
case "${OSTYPE}" in
    darwin*)
        if [[ -d /Applications/MacVim.app ]]; then
            alias vim=/Applications/MacVim.app/Contents/MacOS/Vim
            alias vi=vim
        fi
        ;;

    *) 
        ;;
esac
# ============================================================
export LANG=ja_JP.UTF-8
export EDITOR=vim
# ============================================================
setopt prompt_subst
autoload colors
colors

case ${UID} in
    0)  # root
        PROMPT="%B%{$fg[red]%}%~%{$reset_color%}[%n@%M]$%b "
        PROMPT2="%B%_>%b "
        SPROMPT="%B%r is correct? [n,y,a,e]:%b "
        RPROMPT="%B%{$fg[red]%}%D %*%{$reset_color%}%b"
        ;;
    *)
        PROMPT="%{$fg[magenta]%}%~%{$reset_color%}[%n]$ "
        PROMPT2="%_> "
        SPROMPT="%r is correct? [n,y,a,e]: "
        RPROMPT="%{$fg[cyan]%}%D %*%{$reset_color%}"
        ;;
esac
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

