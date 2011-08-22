"Status line
set statusline=%F%m%r%h%w\ %{&ff}\ %Y\ a/h:%03.3b/%02.2B\ %04l,%04v\ %p%%\ %L\ lines
set laststatus=2

"Tabstop
set tabstop=4

"Autoindent
set si

"Colorscheme
syntax on
colorscheme pablo

"Cursorline
set cursorline
highlight CursorLine cterm=bold

"Key Mappings
map tn :tabn<CR>
map tp :tabp<CR>
map sh :sp<CR>
map sv :vs<CR>

let mapleader = ","
map <leader>n :w\|!node %<CR>
map <leader>c :w\|!coffee %<CR>
map <leader>v :w\|!vows --spec %<CR>
vmap c :CoffeeCompile<CR>
