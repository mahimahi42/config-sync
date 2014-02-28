#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
#setopt APPEND_HISTORY
## for sharing history between zsh processes
#setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

# autoload -U colors
#colors
PROMPT="%n@%M %~ %# "
export CC="ccache gcc"
export CXX="ccache g++"
export PATH=/usr/local/apache-maven-3.1.1/bin:$PATH
export ANT_HOME=/usr/share/ant
export PATH=$ANT_HOME/bin:$PATH
alias nano="nano -c"
alias ip="curl icanhazip.com"
alias ifconfig="/sbin/ifconfig"
alias ls="ls -la --color=auto"
alias grep="grep --color=auto"
alias ping="ping -c 5 -s.2"
alias ports="netstat -tulanp"
