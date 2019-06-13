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
set splitbelow
set splitright

" Status line
set laststatus=2
set statusline=%#LineNr#
set statusline+=\ %f

" Linux line endings
set ff=unix

" Remaps
nnoremap <S-k> :tabn<cr>
nnoremap <S-j> :tabp<cr>
"nnoremap <S-k> <C-w><C-k>
"nnoremap <S-j> <C-w><C-j>
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
Plug 'RobertBrewitz/vim-jsx'
let g:jsx_ext_required = 0
Plug 'RobertBrewitz/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
Plug 'RobertBrewitz/jellybeans.vim'
Plug 'RobertBrewitz/rainbow_levels.vim'
map <leader>l :RainbowLevelsToggle<cr>
call plug#end()

" Theme
color jellybeans

" Rainbow
hi default link RainbowLevel0 Function
hi default link RainbowLevel1 String
hi default link RainbowLevel2 PreProc
hi default link RainbowLevel3 Statement
hi default link RainbowLevel4 Identifier
hi default link RainbowLevel5 Constant
hi default link RainbowLevel6 Type

for level in range(0, 6)
  exe 'hi! link RainbowLevel'.(level+7).' RainbowLevel'.level
endfor

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
