#bash_prompt removed for zsh
for file in ~/.{aliases,functions,extra,exports}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

