" Encoding
scriptencoding utf-8
set encoding=utf-8

" Configuration

set nocompatible
set number relativenumber
set smartindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set list
set listchars=tab:▸\ ,eol:¬,trail:·
syntax on
set backspace=indent,eol,start
set timeoutlen=1000 ttimeoutlen=0

" Status line
set laststatus=2
set statusline=%#LineNr#
set statusline+=\ %f

" Linux line endings
set ff=unix

" Remaps
nnoremap <S-k> :tabn<cr>
nnoremap <S-j> :tabp<cr>
nnoremap <S-h> <C-w><C-h>
nnoremap <S-l> <C-w><C-l>
nnoremap <C-p> :FZF<cr>
vnoremap <C-C> "*y

" Theme
color idlefingers

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'wakatime/vim-wakatime'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 0
Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
call plug#end()

" Always show signs gutter
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
highlight SignColumn ctermbg=black

" Load environment specific vim config
let $VIMRC_OSX='~/.vimrc_osx'
if filereadable(expand($VIMRC_OSX))
  source $VIMRC_OSX
endif

let $VIMRC_CHRONOS='~/.vimrc_chronos'
if filereadable(expand($VIMRC_CHRONOS))
  source $VIMRC_CHRONOS
endif

let $VIMRC_WSL='~/.vimrc_wsl'
if filereadable(expand($VIMRC_WSL))
  source $VIMRC_WSL
endif
