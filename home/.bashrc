# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

# User specific aliases and functions
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color)
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    ;;
xterm*)
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    ;;
*)
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
PS1='\[\e[0;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;31m\]\$ \[\e[m\]\[\e[0;37m\] '
#    PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[m\] \[\e[1;32m\]\$ \[\e[m\]\[\e[1;37m\] '
    ;;
esac

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
alias l='ls -lhS'
alias h='df -Th'
alias em='emacs -nw'
alias mm='sudo tail -f /var/log/messages'
alias md='sudo tail -f /var/log/daemon.log'
alias ms='sudo tail -f /var/log/syslog.log'
alias mx='sudo tail -f /var/log/Xorg.0.log'
alias me='sudo tail -f /var/log/everything.log'

export SVN_EDITOR='/usr/bin/vim'

#setxkbmap latam -model evdev
