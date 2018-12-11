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
call plug#end()

" Always show signs gutter
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
highlight SignColumn ctermbg=black

" Load environment specific vim config
let $VIMRC_CHRONOS='~/.vimrc_chronos'
if filereadable(expand($VIMRC_CHRONOS))
  source $VIMRC_CHRONOS
endif

let $VIMRC_WIN10='~/.vimrc_win10'
if filereadable(expand($VIMRC_WIN10))
  source $VIMRC_WIN10
endif

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'
if executable(s:clip)
  augroup WSLYank
    autocmd!
    autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
  augroup END
end
