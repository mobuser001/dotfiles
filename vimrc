" Being considerate
set nocompatible
set secure
set ff=unix

" Encoding
scriptencoding utf-8
set encoding=utf-8

" Allow backspace
set backspace=indent,eol,start

" Syntax highlighting
syntax on

" Indentation & whitespace
set autoindent
set smartindent
set shiftwidth=2
set expandtab
set tabstop=2
set listchars=tab:▸\ ,eol:¬,trail:·
set list

" Gutter
set number relativenumber

" Command timeouts
set timeoutlen=1000
set ttimeoutlen=0

" Status
set showtabline=2
set laststatus=2

" Remaps
nnoremap <S-k> :tabn<cr>
nnoremap <S-j> :tabp<cr>
nnoremap <S-h> <C-w><C-h>
nnoremap <S-l> <C-w><C-l>
nnoremap <C-p> :FZF<cr>
nnoremap ; :
vnoremap <C-C> "*y

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'RobertBrewitz/editorconfig-vim'
Plug 'RobertBrewitz/fzf'
Plug 'RobertBrewitz/vim-surround'
Plug 'RobertBrewitz/vim-javascript'
Plug 'RobertBrewitz/vim-jsx-pretty'
Plug 'RobertBrewitz/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
Plug 'RobertBrewitz/jellybeans.vim'
Plug 'RobertBrewitz/rainbow_levels.vim'
Plug 'RobertBrewitz/vim-svelte'
map <leader>l :RainbowLevelsToggle<cr>
call plug#end()

" Theme
color jellybeans

" Rainbow
hi default link RainbowLevel0 PreProc
hi default link RainbowLevel1 String
hi default link RainbowLevel2 Function
hi default link RainbowLevel3 Type
hi default link RainbowLevel4 Constant
hi default link RainbowLevel5 Identifier
hi default link RainbowLevel6 Statement

for level in range(0, 6)
  exe 'hi! link RainbowLevel'.(level+7).' RainbowLevel'.level
endfor

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
