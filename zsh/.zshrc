# Keybindings
# -----------
# Use Emacs-style keybindings (default behavior in Zsh).
bindkey -e

# Environment
# -----------
export BROWSER="chromium"
export EDITOR="nvim"
export PAGER="less"

# Zsh Completion System Configuration
# -----------------------------------
# This section initializes and configures the autocompletion system.
autoload -Uz compinit       # Load the `compinit` function for autocompletion.
compinit                    # Initialize autocompletion.

# Configure completion behavior:
# - `_expand`: Expands aliases, parameters, etc.
# - `_complete`: Standard autocompletion.
# - `_ignored`: Include ignored patterns in completion.
# - `_correct`: Suggest corrections for typos.
# - `_approximate`: Allow fuzzy matching.
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/jason/.zshrc'

# Ensures that new commands are available for completion without restarting zsh
zstyle ':completion:*' rehash true 

## History Configuration
# ----------------------

# Settings to control command history behavior.
HISTFILE=~/.histfile        # Location of the history file.
HISTSIZE=10000              # Maximum number of history entries in memory.
SAVEHIST=10000              # Maximum number of history entries saved to the file.

# History options:
setopt share_history        # Share history across all Zsh instances.
setopt hist_ignore_space    # Ignore commands prefixed with a space.
setopt hist_ignore_all_dups # Avoid duplicate entries in the history.
setopt inc_append_history   # Append commands to the history immediately.
unsetopt beep               # Disable the terminal beep sound.

# Enable intuitive history searching with Up/Down arrows.
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search  # Up arrow: Search backward in history.
bindkey "^[[B" down-line-or-beginning-search # Down arrow: Search forward in history.

# If installed, use atuin for shell history
# If atuin is used it will supercede some of the above history settings
if command -v atuin > /dev/null 2>&1; then
  [ -s "$HOME/.atuin/bin/env" ] && source "$HOME/.atuin/bin/env"
  eval "$(atuin init zsh --disable-up-arrow)"
fi

# Prompt with Version Control System (VCS) Info
# ---------------------------------------------
# This section configures the shell prompt to display information about version control systems (e.g., Git, SVN).
# Reference: https://github.com/zsh-users/zsh/blob/master/Misc/vcs_info-examples

# Enable prompt substitution for dynamic prompt changes.
setopt prompt_subst

# Load `vcs_info` to gather version control information.
autoload -Uz vcs_info

# Enable `vcs_info` for Git and SVN repositories.
zstyle ':vcs_info:*' enable git svn

# Git-specific configurations:
# - Show an indicator for unstaged changes (`%F{red}*%f`).
# - Show an indicator for staged changes (`%F{yellow}*%f`).
# - Format the branch display (`%F{#bb9af7}%b%u%c%f`).
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr '%F{red}*%f'
zstyle ':vcs_info:git:*' stagedstr '%F{yellow}*%f'
zstyle ':vcs_info:git:*' formats '%F{#bb9af7}%b%u%c%f'

# Git-SVN specific configurations:
# - Use the same indicators and format as Git repositories.
zstyle ':vcs_info:git-svn:*' unstagedstr '%F{red}*%f'
zstyle ':vcs_info:git-svn:*' stagedstr '%F{yellow}*%f'
zstyle ':vcs_info:git-svn:*' formats '%F{#bb9af7}%b%u%c%f'

# Configure the `precmd` function to update the prompt before each command.
# - If inside a VCS repository, show branch info.
# - Otherwise, only display the current directory.
precmd() {
    vcs_info # Update VCS info.

    # Define the prompt based on whether VCS info is available.
    if [[ -z ${vcs_info_msg_0_} ]]; then
        PS1='%F{cyan}%~%f %F{green}❯%f ' # No VCS info: Show directory only.
    else
        PS1='%F{cyan}%~%f ${vcs_info_msg_0_} %F{green}❯%f ' # VCS info: Show branch info.
    fi
}

### Aliases
# -----------------
alias be="bundle exec"                      # Run `bundle exec` with shorthand.
alias pe="pipenv"                           # Run `pipenv` with shorthand.
alias gs="git status"                       # Quickly check the status of a Git repository.
alias boundports="sudo lsof -i -P -n | grep LISTEN" # View active listening ports.
alias n="nvim"                              # Use `nvim` as shorthand for Neovim.
alias gcs="gsutil"                          # Use `gsutil` with shorthand.
alias ll='ls -lh'
alias la='ls -a'
case `uname` in
  Linux)
    alias open='xdg-open'
  ;;
esac

# Wrapper function for `ls` to use alternatives (exa/eza) if available, with fallback to native `ls`.
ls() {
  if command -v exa > /dev/null 2>&1; then
    exa "$@"
  elif command -v eza > /dev/null 2>&1; then
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

# Wrapper function for `cat` to use `bat` if available, with fallback to native `cat`.
cat() {
  if command -v bat > /dev/null 2>&1; then
    bat "$@"
  else
    command cat "$@"
  fi
}

# Wrapper function for `cd` to use `bat` if available, with fallback to native `cd`.
if command -v zoxide > /dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

cd() {
  if command -v zoxide > /dev/null 2>&1; then
    z "$@"
  else
    builtin cd "$@"
  fi
}

### Go Language Environment
# --------------------------
# Add Go binaries and custom local binaries to the PATH.
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/go/bin"

### Mise Integration
# -------------------
# Activate `mise` (a tool for managing shell environments) if it is installed.
if command -v mise > /dev/null; then
  eval "$(mise activate zsh)"
fi

### Local System-Specific Configuration
# --------------------------------------
# Source a local `.zshrc_local` file if it exists, for machine-specific customizations.
if [ -f ~/.zshrc_local ]; then
  . ~/.zshrc_local
fi


# bun completions
[ -s "/home/jason/.bun/_bun" ] && source "/home/jason/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
