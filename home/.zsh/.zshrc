if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi
source ~/.zplug/init.zsh

zplug "junegunn/fzf-bin", \
    from:gh-r, \
    as:command, \
    rename-to:fzf
zplug "junegunn/fzf", use:"shell/completion.zsh"
zplug "junegunn/fzf", use:"shell/key-bindings.zsh"

zplug "b4b4r07/enhancd", use:init.sh
if zplug check b4b4r07/enhancd; then
    export ENHANCD_FILTER=fzf
fi

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

zplug load

HISTFILE=${ZDOTDIR}/.zsh_history
HISTSIZE=51200
SAVEHIST=51200
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt extended_history
setopt share_history
setopt inc_append_history

setopt no_beep
setopt no_hist_beep
setopt no_list_beep

setopt notify

bindkey -v

# Aliases
source ${ZDOTDIR}/.zshaliases

# Auto compile
if [ ! -f ${ZDOTDIR}/.zshrc.zwc -o ${ZDOTDIR}/.zshrc -nt ${ZDOTDIR}/.zshrc.zwc ]; then
    zcompile ${ZDOTDIR}/.zshrc
fi

# Restore tmux automatically.
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux a
