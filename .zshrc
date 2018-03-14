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
  git docker zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

# load my custom .dotfiles
if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile;
fi

#autocomplete only the next word ctrl+space zsh-autosuggest
bindkey '^ ' forward-word
