for file in ~/.{bash_prompt,exports,aliases,functions,extra,sencha}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color