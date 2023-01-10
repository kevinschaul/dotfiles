local ret_status="%(?:%{$fg_bold[cyan]%}* :%{$fg_bold[red]%}* %s)"

PROMPT='${ret_status}%{$fg_bold[black]%}%n:%{$fg_bold[blue]%}%p%{$fg[cyan]%}%~ %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}
%{$fg_bold[black]%}[%T]%{$reset_color%} %# '

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
