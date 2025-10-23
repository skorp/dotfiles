#!/usr/bin/env bash
# ~/.dotfiles/init.sh

set -e

cd "$(dirname "$0")" || exit 1
echo "📦 Updating dotfiles repository..."
git pull --quiet

function doIt() {
  echo "🚀 Syncing dotfiles to home directory..."
  rsync --exclude ".git/" \
        --exclude ".idea" \
        --exclude ".DS_Store" \
        --exclude "init.sh" \
        --exclude "README.md" \
        -avh --no-perms . ~
  echo "✅ Dotfiles copied successfully!"
}

if [[ "$1" == "--force" || "$1" == "-f" ]]; then
  doIt
else
  read -rp "⚠️  This may overwrite existing files in your home directory. Proceed? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt
  else
    echo "❌ Aborted."
    exit 1
  fi
fi

unset doIt

# Reload appropriate shell configuration
if [ -n "$ZSH_VERSION" ]; then
  echo "🔁 Reloading Zsh configuration..."
  if [ -f ~/.zprofile ]; then
    source ~/.zprofile
  elif [ -f ~/.zshrc ]; then
    source ~/.zshrc
  fi
elif [ -n "$BASH_VERSION" ]; then
  echo "🔁 Reloading Bash configuration..."
  if [ -f ~/.bash_profile ]; then
    source ~/.bash_profile
  fi
else
  echo "ℹ️  Unknown shell. Please restart your terminal manually."
fi

echo
echo "🎉 Setup complete!"
echo "👉 If things don't load immediately, run:  exec zsh -l"
