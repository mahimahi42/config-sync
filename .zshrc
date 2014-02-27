autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

#history config
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

PROMPT="%n@%M %~ %# "

#aliases
alias ip="curl icanhazip.com"
