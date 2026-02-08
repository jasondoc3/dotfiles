[[ -f ~/.bashrc ]] && . ~/.bashrc

if [ -f "$HOME/.local/share/../bin/env" ]; then
  . "$HOME/.local/share/../bin/env"
fi
