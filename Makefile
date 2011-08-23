install:
	rm -f ~/.vimrc
	rm -rf ~/.vim
	mkdir -p ~/.ssh ~/.vim
	cp -rp .bashrc ~/
	cp -rp .ssh/* ~/.ssh/
	cp -rp .vim/* ~/.vim/
	ln -sf ~/.vim/vimrc ~/.vimrc
