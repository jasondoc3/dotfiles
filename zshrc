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
setopt inc_append_history
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

# Prompt
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr '%F{red}*%f'
zstyle ':vcs_info:git:*' stagedstr '%F{yellow}*%f'
zstyle ':vcs_info:git:*' formats '%F{#bb9af7}%b%u%c%f'
zstyle ':vcs_info:git-svn:*' unstagedstr '%F{red}*%f'
zstyle ':vcs_info:git-svn:*' stagedstr '%F{yellow}*%f'
zstyle ':vcs_info:git-svn:*' formats '%F{#bb9af7}%b%u%c%f'
# https://github.com/zsh-users/zsh/blob/master/Misc/vcs_info-examples
precmd() {
    vcs_info

    if [[ -z ${vcs_info_msg_0_} ]]; then
        PS1='%F{cyan}%~%f %F{green}❯%f '
    else
        PS1='%F{cyan}%~%f ${vcs_info_msg_0_} %F{green}❯%f '
    fi
}

case `uname` in
  Linux)
    alias open='xdg-open'
  ;;
esac

ls() {
  if which exa > /dev/null 2>&1; then
    exa "$@"
  elif which eza > /dev/null 2>&1; then
    eza "$@" 
  else
    if [[ $(uname) == 'Linux' ]] then
      LS_COLORS='rs=0:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:';
      export LS_COLORS
      command ls --color=auto "$@"
    else
      export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
      command ls -G "$@"
    fi
  fi
}

alias ll='ls -lh'
alias la='ls -a'

cat() {
  if which bat > /dev/null 2>&1; then
    bat "$@"
  else
    command cat "$@"
  fi
}

# cd and autojump using zoxide
if which zoxide > /dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

cd() {
  if which zoxide > /dev/null 2>&1; then
    z "$@"
  else
    command cd "$@"
  fi
}

# Environment
export BROWSER="chromium"
export EDITOR="nvim"
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
alias gcs="gsutil"

# Pipenv
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/go/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi
export CLOUDSDK_PYTHON=/usr/bin/python3

# chruby
if [ -f /usr/share/chruby/chruby.sh ]; then source /usr/share/chruby/chruby.sh; fi
if [ -f /usr/share/chruby/auto.sh ]; then source /usr/share/chruby/auto.sh; fi

# Custom stuff per system if needed
if [ -f ~/.zshrc_local ]; then . ~/.zshrc_local; fi

# nvm
if [ -f ~/usr/share/nvm/init-nvm.sh ]; then source /usr/share/nvm/init-nvm.sh; fi

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
