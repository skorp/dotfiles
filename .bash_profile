for file in ~/.{bash_prompt,exports,aliases,functions,extra,sencha}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file