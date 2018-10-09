" Configuration

set nocompatible
set number relativenumber
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
Plug 'wakatime/vim-wakatime'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'sudo ./install --all' }
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 0
call plug#end()

" Always show signs gutter
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
highlight SignColumn ctermbg=black
