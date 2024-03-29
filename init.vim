set nocompatible
filetype plugin indent on
syntax on
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set backspace=indent,eol,start
set hidden
nnoremap Y y$
set hls
set incsearch
set path=.,**
" set wildignore+=*/node_modules/*,*.class,*/target/*
set showmatch
set wildmenu
set showcmd
set ttimeout
set ttimeoutlen=100
set display=truncate
set nrformats-=octal
map Q gq
inoremap <C-U> <C-G>u<C-U>
set nolangnoremap
set complete=.,w,b,u,t,i
set omnifunc=syntaxcomplete#Complete
set number
set colorcolumn=80
set termguicolors

let $RTP=split(&runtimepath, ',')[0]
let $RC='$HOME/.config/nvim/init.vim'

autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
  \ | wincmd p | diffthis

" autocmd FileType javascript setlocal makeprg=eslint\ --format\ compact
" autocmd BufWritePost *.js silent make! <afile> | silent redraw!
" autocmd QuickFixCmdPost [^l]* cwindow

runtime macros/matchit.vim

colorscheme elflord
