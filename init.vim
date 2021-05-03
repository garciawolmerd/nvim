" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vim/vimrc
set nocompatible
filetype plugin indent on
syntax on
set backspace=indent,eol,start
set hidden
nnoremap Y y$
set hls
set incsearch
set path=.,**
set wildignore=*/node_modules/*
set showmatch
set wildmenu
set showcmd
set ttimeout
set ttimeoutlen=100
set display=truncate
set nrformats-=octal
map Q gq
inoremap <C-U> <C-G>u<C-U>
set nolangremap
set complete=.,w,b,u,t,i
set omnifunc=syntaxcomplete#Complete
set number
set colorcolumn=80
set termguicolors

let $RTP=split(&runtimepath, ',')[0]
let $RC='$HOME/.vim/vimrc'

" remap ctrl+j to insert new line
nnoremap <NL> i<CR><ESC>

autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
  \ | wincmd p | diffthis

autocmd FileType javascript setlocal makeprg=eslint\ --format\ compact
autocmd BufWritePost *.js silent make! <afile> | silent redraw!
autocmd QuickFixCmdPost [^l]* cwindow

runtime macros/matchit.vim

colorscheme koehler
