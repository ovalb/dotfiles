# Yay! High voltage and arrows!

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} +%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""


PROMPT='%{$fg[cyan]%}%1~%{$reset_color%}%{$fg[magenta]%} %{$reset_color%}$(git_prompt_info)%{$fg[cyan]%}>%{$reset_color%} '
