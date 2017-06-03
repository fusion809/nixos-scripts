function prompt_char {
	if [[ $UID -eq 0 ]]; then
		echo "%{$fg_bold[red]%}%_#"
	else
		echo "%{$fg_bold[green]%}%_$"
	fi
}

PROMPT='$fg_bold[yellow][%D{%H:%M:%S}]$reset_color%} %(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n) %{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)
% $(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
