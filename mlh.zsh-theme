# README
#
# Official Major League Hacks Theme
#
# Goals
#
# Simplify your setup
# Show stuff that you need while hacking
# Be modern and easy to view
#

username() {
   echo "%{$FG[001]%}%n%{$reset_color%}"
}

# Returns device name 
device() {
   echo "%{$FG[021]%}%m%{$reset_color%}"
}

# The current directory
directory() {
   echo "%{$FG[220]%}%1~%{$reset_color%}"
}

# 
symbol() {
   echo ">"
}

# Current time with milliseconds
current_time() {
   echo "%*"
}

# Return status of the last command
return_status() {
   # %{$BG[046]%}
   echo "%(?.%{$FG[047]%}out %?.%{$FG[001]%}out %?)%{$reset_color%}"
}

# Set the git_prompt_info text
ZSH_THEME_GIT_PROMPT_PREFIX=" on ["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

# %B and %b make the text bold
PROMPT='%B$(username) at $(device) in $(directory)$(git_prompt_info)%b $(symbol) '
RPROMPT="$(return_status) $(current_time)"