# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/kadir/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="prose"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.my_custom_zsh_path

plugins=(
  git docker zsh-autosuggestions z
)
source $ZSH/oh-my-zsh.sh

# load my custom .dotfiles
if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile;
fi

#autocomplete only the next word ctrl+space zsh-autosuggest
bindkey '^ ' forward-word

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE
export HISTCONTROL=ignoredups
# Make some commands not show up in history
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"


# load nvm via Homebrew
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  --no-use # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

nvm use default &>/dev/null