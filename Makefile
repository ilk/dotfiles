install:
	mkdir -p ~/.ssh ~/.vim
	cp -rp .ssh/* ~/.ssh/
	cp -rp .vim/* ~/.vim/
	ln -sf ~/.vim/vimrc ~/.vimrc
	mkdir -p ~/.vim/bundle
	cd ~/.vim/bundle
	git clone https://github.com/kchmck/vim-coffee-script.git
