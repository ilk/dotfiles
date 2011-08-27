install: vim ssh bashrc colors aliases profile gitconfig

vim:
	rm -f ~/.vimrc
	rm -rf ~/.vim
	mkdir -p ~/.vim
	cp -rp .vim/* ~/.vim/
	ln -sf ~/.vim/vimrc ~/.vimrc

ssh:
	mkdir -p ~/.ssh
	cp -rp .ssh/* ~/.ssh/

bashrc:
	rm -f ~/.bashrc
	rm -f ~/.bashrc.extra
	cp -rp .bashrc ~/
	cp -rp .bashrc.extra ~/

colors:
	rm -f ~/.colors
	cp -rp .colors ~/

aliases:
	rm -f ~/.osx_alias
	rm -f ~/.deb_alias
	rm -f ~/.alias
	cp -rp .osx_alias ~/
	cp -rp .deb_alias ~/
	cp -rp .alias ~/

profile:
	rm -f ~/.profile
	cp -rp .profile ~/

gitconfig:
	rm -f ~/.gitconfig
	cp -rp .gitconfig ~/ 
