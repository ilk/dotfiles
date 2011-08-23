install: vim ssh bashrc profile gitconfig

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
	cp -rp .bashrc ~/

profile:
	rm -f ~/.profile
	cp -rp .profile ~/

gitconfig:
	rm -f ~/.gitconfig
	cp -rp .gitconfig ~/ 
