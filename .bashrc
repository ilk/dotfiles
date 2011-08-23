#!/usr/bin/env bash
[ -z "$PS1" ] && return

export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
export HISTCONTROL=ignoreboth
shopt -s histappend
shopt -s checkwinsize

if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
        color_prompt=
	fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[00;37m\]\u@\h\[\033[00m\]:\[\033[00;31m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

case "$TERM" in
	xterm*|rxvt*)
    	PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
esac

if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi
	
if [ "`uname -s`" == "Darwin" ]; then
	alias sudos="sudo -s"
else
	alias sudos='sudo env PATH=$PATH HOME=$HOME su -p'
fi
                                                                                          
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# autoupdate dotfiles
if [ -d ~/dotfiles/.git ] && [ "$USER" != "root" ]; then
	echo dotfiles: updating
	cd ~/dotfiles
	git pull &&	make -s install
	cd ~/
fi

PATH=./.bin:$PATH
export EDITOR=vim
