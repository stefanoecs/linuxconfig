"Comando para Download do Plug
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

set nocompatible
call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""" Funcao Criar arquivo .cpp
function! AutoCpp()
  call append(0,'#include <iostream>')
  call append(1,'')
  call append(2,'int main(){')
  call append(3,"\t")
  call append(4,"\treturn 0;")
  call append(5,'}')
  call cursor(4,30)
endfunction
autocmd BufNewFile *.cpp :cal AutoCpp()

let g:airline_powerline_fonts = 1
let g:airline_theme = 'badwolf'
let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.maxlinenr = '  '
let g:airline_symbols.dirty='⚡'
set nu!
map q :quit<CR>
map <C-s> :w<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
set cursorline cul
syntax on
set mouse=a
set title
set encoding=utf-8
"let g:material_theme_style = 'darker-community'
"colorscheme monokai
"colorscheme OceanicNext
colorscheme onedark
"colorscheme monokai
"colorscheme monokai
"colorscheme monokai
"colorscheme monokai
"colorscheme monokai
set tabstop=3
set expandtab
set autoindent
set showmatch
set wildmenu