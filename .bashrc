[ -n "$PS1" ] && source ~/.bash_profile

# Don't put duplicate lines in the history
export HISTCONTROL=ignoredups

# Store a lot history entries in a file for grep-age
shopt -s histappend
export HISTFILE=~/long_history
export HISTFILESIZE=50000

# No reason not to save a bunch in history
# Takes up several more MBs of RAM now, oOOOooh
export HISTSIZE=9999

# Ignore dupe commands and other ones you don't care about
export HISTIGNORE="&:[ ]*:exit"
