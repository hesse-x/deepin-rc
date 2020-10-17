set tabstop=2
set nu
set cindent
set numberwidth=1
set shiftwidth=2
set autoindent
set expandtab
set mouse=a
vnoremap <C-c> "+y
nnoremap <C-v> "+p
inoremap <C-v> <ESC>"+pi
set viminfo='10,\"100,:20,%,n~/.viminfo 
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
syntax on
set backspace=indent,eol,start
