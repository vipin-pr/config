colorscheme desert
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green
set mouse=a
set ignorecase

inoremap jj <Esc>
nnoremap <M-j> :m .+1<CR>
nnoremap <M-k> :m .-2<CR>

if exists('$TMUX')
  let &t_SI = "\e[6 q"
  let &t_EI = "\e[2 q"
else
  let &t_SI = "\e[6 q"
  let &t_EI = "\e[2 q"
endif