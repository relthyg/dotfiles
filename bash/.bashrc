#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Basic prompt
PS1='[\u@\h \W]\$ '

# Source some files
SOURCES=(~/.exports ~/.bash_aliases ~/.bash_prompt ~/.bashrc.local)
for SOURCE in ${SOURCES[@]}
do
    [[ -f $SOURCE ]] && . $SOURCE
done

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

