install:
	mkdir -p ~/.ssh ~/.vim
	cp -rp .ssh/* ~/.ssh/
	rm ~/.vimrc
	rm -r ~/.vim
	cp -rp .vim/* ~/.vim/
	ln -sf ~/.vim/vimrc ~/.vimrc
