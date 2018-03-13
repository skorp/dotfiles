if [ "x$OH_MY_ZSH_HG" = "x" ]; then
    OH_MY_ZSH_HG="hg"
fi

function apple {
  echo -n ""
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

function parse_git_commit_id() {
    output=$(git rev-parse --short HEAD 2>/dev/null)
    [[ ! -z "$output" ]] && echo "[$output]"
}

PROMPT='
%{$fg[magenta]%}%n%{$reset_color%} $(apple) %{$fg[yellow]%}$(box_name)%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info) %{$fg[white]%}$(parse_git_commit_id)%{$reset_color%}
$ '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[red]%} ✘ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔ %{$reset_color%}"

local return_status="%{$fg[red]%}%(?..✘)%{$reset_color%}"

