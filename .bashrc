## functions
# autoupdate dotfiles
dotup() {
	if [ -d ~/dotfiles/.git ] && [ "$USER" != "root" ]; then
		echo dotfiles: updating
		cd ~/dotfiles
		git pull &&	make -s install
		cd ~/
	fi
}
export -f dotup

# sudo normalizer
sudo () {
    if [ "$*" == "-s" ] && [ "`uname -s`" != "Darwin" ]; then
        `which sudo` env PATH=$PATH HOME=$HOME su -p
    else
        `which sudo` $*
    fi
}
export -f sudo

# no interactive shell ?
[ -z "$PS1" ] && return

# history
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
export HISTCONTROL=ignoreboth
shopt -s histappend
shopt -s checkwinsize

# bash completion
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# colors
. ~/.colors 

# aliases
if [ "`uname -s`" == "Darwin" ]; then
	. ~/.osx_alias
else
	. ~/.deb_alias
fi

PATH=./.bin:$PATH
export EDITOR=vim
. ~/.bashrc.extra
