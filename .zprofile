# ~/.zprofile
# Ensure Homebrew paths are available before anything else
if command -v brew &>/dev/null; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Source .zshrc so login shells load the same config
if [ -f ~/.zshrc ]; then
  source ~/.zshrc
fi
