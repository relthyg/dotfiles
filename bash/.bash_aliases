# enable color support of ls and grep
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -l'
alias la='ls -la'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias radio='mplayer -cache 1000 -playlist'
alias lndp='aptitude search "?narrow(?installed,?not(?origin(Debian)))" | sed "s/^i\sA*\s//" | cut -d " " -f 1 | while read package; do echo -n "$package "; apt-cache policy $package | awk "/\*/{getline; print}" | sed "s/ *[0-9]* //" | cut -d " " -f 1; done | column -t'
alias ssh-katarre='ssh ssh-w00d366c@katarre.de'

