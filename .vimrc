set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'rails.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'neocomplcache'
Bundle 'fugitive.vim'
Bundle 'unite.vim'

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set nocompatible
set laststatus=2 "ステータスラインを常に表示

syntax on
filetype on
filetype indent on
filetype plugin on

imap <C-Space> <c-x><c-o>

noremap ; :
noremap : ;


let &statusline = ''
let &statusline .='%<[%n]%f %h%m%r%w'
let &statusline .= '%='
"" temporary disabled.
"let &statusline .= '(%{' . s:SID_PREFIX() . 'vcs_branch_name(getcwd())}) '
let &statusline .= '%{fugitive#statusline()}[%{( &l:fileencoding == "" ? &encoding : &l:fileencoding ).":".&fileformat}]%y'
let &statusline .= ' %-14.(%l,%c%V%) %P'
