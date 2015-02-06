# ------------------------------------------------------------------------------
#          FILE:  vortizhe.zsh-theme
#   DESCRIPTION:  oh-my-zsh theme file.
#        AUTHOR:  Victor Ortiz (kespers@gmail.com)
#       VERSION:  1.0.0
#    SCREENSHOT:
# ------------------------------------------------------------------------------
function toon {
  echo -n ""
}
local ruby_prompt='‹%{$fg[magenta]%}$(rbenv version-name)%{$reset_color%}›'
local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'

git_prompt='%{$fg[green]%}%~%{$reset_color%} $(git_prompt_info)$(git_prompt_status)%{$reset_color%}'

PROMPT="$git_prompt
$(toon) "

ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

# display exitcode on the right when >


RPROMPT="$ruby_prompt"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]% ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"
