# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
#
# This "if" check was written by jason so that way this bashrc can easily be used on macOS too
if [[ -f ~/.local/share/omarchy/default/bash/rc ]]; then
  source ~/.local/share/omarchy/default/bash/rc
fi

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
alias be="bundle exec"                              # Run `bundle exec` with shorthand.
alias gs="git status"                               # Quickly check the status of a Git repository.
alias boundports="sudo lsof -i -P -n | grep LISTEN" # View active listening ports.
alias n="nvim"                                      # Use `nvim` as shorthand for Neovim.
alias gcs="gsutil"                                  # Use `gsutil` with shorthand.
alias ll='ls -lh'
alias la='ls -a'

cat() {
  if command -v bat >/dev/null 2>&1; then
    bat "$@"
  else
    command cat "$@"
  fi
}

# If installed, use atuin for shell history
# If atuin is used it will supercede some of the above history settings
if command -v atuin >/dev/null 2>&1; then
  [ -s "$HOME/.atuin/bin/env" ] && source "$HOME/.atuin/bin/env"
  eval "$(atuin init bash --disable-up-arrow)"
fi

# bun completions
[ -s "/home/jason/.bun/_bun" ] && source "/home/jason/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Put any local secrets, or things that shouldn't be committed to source control here
if [ -f ~/.bashrc.local ]; then
  . ~/.bashrc.local
fi
