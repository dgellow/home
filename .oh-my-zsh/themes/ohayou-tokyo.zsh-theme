# File: ohayou-tokyo.zsh-theme
# Creation: 2013
# Author: Samuel El-Borai aka dgellow https://github.com/dgellow
# Description: A oh-my-zsh theme
#
# Work based on wedisagree theme by transat https://github.com/transat

# Here are the colours from Textmate's Monokai theme if you want to modify your terminal colour scheme:
# 
# Black: 0, 0, 0
# Red: 229, 34, 34
# Green: 166, 227, 45
# Yellow: 252, 149, 30
# Blue: 196, 141, 255
# Magenta: 250, 37, 115
# Cyan: 103, 217, 240
# White: 242, 242, 242



# PYTHON
# Determine if we are using a virtualenv.
function virtualenv_in_use() {
    ENV=`echo $VIRTUAL_ENV | awk '{n=split($0,a,"/"); print a[n]}'`
    if [[ -n $ENV ]]; then
       virtualenv_prompt_info
    fi
}



# RUBY
# Determine if we are using a gemset.
function rvm_gemset() {
    GEMSET=`rvm gemset list | grep '=>' | cut -b4-`
    if [[ -n $GEMSET ]]; then
        echo "%{$fg[yellow]%}$GEMSET%{$reset_color%}|"
    fi 
}



# LEFT PROMPT
PROMPT='%{$fg[black]%}%B[%-1~]%{$fg[magenta]%}[%1d]%b %{$reset_color%}'



# RIGHT PROMPT
RPROMPT='%{$fg[magenta]%}%B$(git_prompt_info)%b%{$reset_color%}$(git_prompt_ahead)%{$reset_color%}$(git_prompt_status)%{$reset_color%} ${time}'

# RVM
RPROMPT='%{$fg[yellow]%}$(~/.rvm/bin/rvm-prompt)%{$reset_color%}'$RPROMPT

# VIRTUALENV
RPROMPT='$(virtualenv_in_use)'$RPROMPT



# LOCAL TIME, color coded by last return code
time_enabled="%(?.%{$fg[green]%}.%{$fg[red]%})%*%{$reset_color%}"
time_disabled="%{$fg[green]%}%*%{$reset_color%}"
time=$time_enabled



# GIT
ZSH_THEME_GIT_PROMPT_PREFIX="  %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ✱" # Ⓓ ☂
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} 〒" # ⓣ
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}  " # Ⓞ

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✚" # ⓐ ⑃
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ⑃"  # ⓜ ⑁
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖" # ⓧ ⑂
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➜" # ⓡ ⑄
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ⬇" # ⓤ ⑊

# More symbols to choose from:
# ☀ ✹ ☄ ♆ ♀ ♁ ♐ ♇ ♈ ♉ ♚ ♛ ♜ ♝ ♞ ♟ ♠ ♣ ⚢ ⚲ ⚳ ⚴ ⚥ ⚤ ⚦ ⚒ ⚑ ⚐ ♺ ♻ ♼ ☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷
# ✡ ✔ ✖ ✚ ✱ ✤ ✦ ❤ ➜ ➟ ➼ ✂ ✎ ✐ ⨀ ⨁ ⨂ ⨍ ⨎ ⨏ ⨷ ⩚ ⩛ ⩡ ⩱ ⩲ ⩵  ⩶ ⨠ 
# ⬅ ⬆ ⬇ ⬈ ⬉ ⬊ ⬋ ⬒ ⬓ ⬔ ⬕ ⬖ ⬗ ⬘ ⬙ ⬟  ⬤ 〒 ǀ ǁ ǂ ĭ Ť Ŧ