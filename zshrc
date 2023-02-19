# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/jason/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt share_history
setopt hist_ignore_space
setopt hist_ignore_all_dups
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

# Prompt
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr '%F{red}*%f'
zstyle ':vcs_info:git:*' stagedstr '%F{green}*%f'
zstyle ':vcs_info:git:*' formats '%F{yellow}%b%u%c%f'
zstyle ':vcs_info:git-svn:*' unstagedstr '%F{red}*%f'
zstyle ':vcs_info:git-svn:*' stagedstr '%F{green}*%f'
zstyle ':vcs_info:git-svn:*' formats '%F{yellow}%b%u%c%f'
# https://github.com/zsh-users/zsh/blob/master/Misc/vcs_info-examples
precmd() {
    vcs_info

    if [[ -z ${vcs_info_msg_0_} ]]; then
        PS1='%F{cyan}%~%f '
    else
        PS1='%F{cyan}%~%f ${vcs_info_msg_0_} '
    fi
}

case `uname` in
  Darwin)
    export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
    alias ls='ls -G'
  ;;
  Linux)
    LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';
    export LS_COLORS
    alias ls='ls --color=auto'
    alias open='xdg-open'
  ;;
esac

alias ll='ls -lh'
alias la='ls -a'

# Environment
export BROWSER="chromium"
export EDITOR="vim"
export PAGER="less"

# Rehash automactially
zstyle ':completion:*' rehash true

# Better history searching with arrow keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# aliases
alias be="bundle exec"
alias pe="pipenv"
alias gs="git status"
alias boundports="sudo lsof -i -P -n | grep LISTEN"
alias nv="nvim"

# autojump
 . "$HOME/home/z.sh"

# fzf
if [ -f /usr/share/fzf/key-bindings.zsh ]; then source /usr/share/chruby/auto.sh; fi
if [ -f /usr/share/fzf/completion.zsh  ]; then source /usr/share/chruby/chruby.sh; fi

# Pipenv
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/go/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi
export CLOUDSDK_PYTHON=/usr/bin/python3

# chruby
if [ -f ~/usr/share/chruby/chruby.sh ]; then source /usr/share/chruby/chruby.sh; fi
if [ -f ~/usr/share/chruby/auto.sh ]; then source /usr/share/chruby/auto.sh; fi

# Custom stuff per system if needed
if [ -f ~/.zsh_profile ]; then . ~/.zsh_profile; fi

# nvm
if [ -f ~/usr/share/nvm/init-nvm.sh ]; then source /usr/share/nvm/init-nvm.sh; fi
