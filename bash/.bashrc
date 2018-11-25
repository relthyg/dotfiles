# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

# PATHs
if [ -f "$HOME/.exports" ]; then
    . "$HOME/.exports"
fi

# Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# include other stuff, if given
if [ -f ~/.bash_other ]; then
    . ~/.bash_other
fi

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend
shopt -s checkwinsize

# set variable identifying the chroot you work in
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set the prompt
PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\$ "

# look for da mo' fancy prompt, won't ya?
if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
        ;;
    *)
        ;;
esac

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

#taking notes
n() {
    vim ~/owncloud/notes/"$*".md
}

ncat() {
    cat ~/owncloud/notes/"$*".md
}

nls() {
    ls -c ~/owncloud/notes/ | grep "$*"
}

setxkbmap -option "caps:swapescape"
