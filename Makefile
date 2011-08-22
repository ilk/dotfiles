install:
	mkdir -p ~/.ssh ~/.vim
	cp -rp .ssh/* ~/.ssh/
	cp -rp .vim/* ~/.vim/
	ln -sf ~/.vim/vimrc ~/.vimrc
