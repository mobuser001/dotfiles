" Configuration

set number
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set list
set listchars=tab:▸\ ,eol:¬
syntax on
set backspace=indent,eol,start

" Remaps
nnoremap <C-k> :tabn<cr>
nnoremap <C-j> :tabp<cr>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-p> :FZF<CR>

" Theme
color idlefingers

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()

