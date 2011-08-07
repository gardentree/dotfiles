set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'rails.vim'
Bundle 'vim-ruby/vim-ruby'

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on

imap <Nul> <c-x><c-o>
