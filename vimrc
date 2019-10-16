scriptencoding utf-8

" Encoding
set encoding=utf-8

" Being considerate
set nocompatible
set secure
set ff=unix

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

" Tags
set tags=tags;/
set tags+=tstags;/
set tags+=jstags;/

" Folding
set nofoldenable

" Remaps
nnoremap <S-k> :tabn<cr>
nnoremap <S-j> :tabp<cr>
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
map <leader>l :RainbowLevelsToggle<cr>
Plug 'RobertBrewitz/typescript-vim'
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd FileType typescript :set makeprg=tsc
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost l* nested lwindow
Plug 'RobertBrewitz/vim-svelte'
Plug 'RobertBrewitz/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
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
let $VIMRC_OSX=$HOME . '/.vimrc_osx'
if filereadable(expand($VIMRC_OSX))
  source $VIMRC_OSX
endif

let $VIMRC_CHRONOS=$HOME . '/.vimrc_chronos'
if filereadable(expand($VIMRC_CHRONOS))
  source $VIMRC_CHRONOS
endif

let $VIMRC_WSL=$HOME . '/.vimrc_wsl'
if filereadable(expand($VIMRC_WSL))
  source $VIMRC_WSL
endif

let $VIMRC_UBUNTU=$HOME . '/.vimrc_ubuntu'
if filereadable(expand($VIMRC_UBUNTU))
  source $VIMRC_UBUNTU
endif
