set number
set smartindent
set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/ag
set runtimepath^=~/.vim/bundle/vim-coffee-script
set runtimepath^=~/.vim/bundle/vim-pug
set runtimepath^=~/.vim/bundle/editorconfig-vim
set expandtab
set tabstop=2
set shiftwidth=2
set list
set listchars=tab:▸\ ,eol:¬
syntax on
color idlefingers
nnoremap <C-k> :tabn<cr>
nnoremap <C-j> :tabp<cr>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
let g:ctrlp_show_hidden = 1

