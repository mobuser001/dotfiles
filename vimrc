" Configuration

set number
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set list
set listchars=tab:▸\ ,eol:¬,trail:·
syntax on
set backspace=indent,eol,start
set timeoutlen=1000 ttimeoutlen=0

" Remaps
nnoremap <C-k> :tabn<cr>
nnoremap <C-j> :tabp<cr>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-p> :FZF<cr>
vnoremap <C-C> "+y

" Theme
color idlefingers

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'digitaltoad/vim-pug'
Plug 'tomlion/vim-solidity'
Plug 'mustache/vim-mustache-handlebars'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
call plug#end()

let g:jsx_ext_required = 0

