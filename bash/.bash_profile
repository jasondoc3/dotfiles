if [ -x /opt/homebrew/bin/brew ]; then
  export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -f "$HOME/.local/share/../bin/env" ]; then
  . "$HOME/.local/share/../bin/env"
fi
