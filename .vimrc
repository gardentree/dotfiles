set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'leafgarland/typescript-vim'
Plug 'prettier/vim-prettier',{'do': 'yarn install','for': ['javascript','typescript','css','less','scss','json','graphql','markdown','vue']}
call plug#end()

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set nocompatible
set laststatus=2 "ステータスラインを常に表示
set title
set autoread   " 他で書き換えられたら自動で読み直す
set clipboard+=unnamed
set backspace=indent,eol,start
set breakindent
set breakindentopt=min:20,shift:1

set wildmenu " コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
" コマンドライン補間をシェルっぽく
set wildmode=list:longest

imap <C-Space> <c-x><c-o>

noremap ; :
noremap : ;
noremap <CR> o<ESC>

nnoremap x "_x
vnoremap x "_x
nnoremap c "_c
vnoremap c "_c

let &statusline = ''
let &statusline .='%<[%n]%f %h%m%r%w'
let &statusline .= '%='
"" temporary disabled.
"let &statusline .= '(%{' . s:SID_PREFIX() . 'vcs_branch_name(getcwd())}) '
let &statusline .= '%{fugitive#statusline()}[%{( &l:fileencoding == "" ? &encoding : &l:fileencoding ).":".&fileformat}]%y'
let &statusline .= ' %-14.(%l,%c%V%) %P'
let loaded_matchparen = 1

"ノーマルモードと挿入モードをステータスラインの色で区別する
au InsertEnter * hi StatusLine guifg=DarkBlue guibg=DarkYellow gui=none ctermfg=Blue ctermbg=Yellow   cterm=none
au InsertLeave * hi StatusLine guifg=DarkBlue guibg=DarkGray   gui=none ctermfg=Blue ctermbg=DarkGray cterm=none

autocmd BufWritePre * :%s/\s\+$//e "行末の空白を自動削除

"deoplete.nvim
let g:deoplete#enable_at_startup = 1

"vim-prettier
let g:prettier#autoformat = 0
let g:prettier#quickfix_enabled = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
