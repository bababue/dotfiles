# Launch tmux not nested
if command -v tmux >/dev/null 2>&1 && [[ -z "$TMUX" ]]; then
  exec tmux new -A -s main
fi
