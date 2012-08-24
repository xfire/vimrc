set nocompatible                  " Must come first because it changes other options.
filetype off                      " Necessary on some Linux distros for vundle to properly load bundles

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" bundles
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'

Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'

Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'

Bundle 'swaroopch/vim-markdown'

Bundle 'vim-scripts/L9.git'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/VimClojure'

Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'godlygeek/tabular'
Bundle 'tComment'
Bundle 'mattn/zencoding-vim'
Bundle 'Townk/vim-autoclose'
Bundle 'mattn/gist-vim'
Bundle 'AutoComplPop'

" settings
set encoding=utf-8
syntax enable
filetype plugin indent on         " load file type plugins + indentation

set showcmd                       " display incomplete commands.
set showmode                      " display the mode you're in.
set showmatch                     " show matching brackets/parenthesis
set hidden                        " handle multiple buffers better.
set title                         " set the terminal's title
set ruler                         " show cursor position.

set nonumber                      " show line numbers.
set noinsertmode                  " don't start in insert mode
set nowrap                        " don't wrap lines
set novisualbell
set noerrorbells

set tabstop=2 shiftwidth=2        " a tab is two spaces (or set this to 4)
set softtabstop=4                 " fake tabs with spaces
set expandtab                     " use spaces, not tabs (optional)
set backspace=indent,eol,start    " backspace through everything in insert mode"
set autoindent                    " match indentation of previous line
set wrapmargin=1                  " remove right border on automagic linebreaks
set whichwrap+=<,>,h,l            " backspace and cursor keys wrap to

set incsearch                     " find as you type search
set hlsearch                      " highlight search terms
set ignorecase                    " case-insensitive searching.
set smartcase                     " but case-sensitive if expression contains a capital letter.
set smartindent                   " smartindent 
set magic                         " extended regex

set foldmethod=indent             " fold based on indent
set foldnestmax=3                 " deepest fold is 3 levels
set nofoldenable                  " dont fold by default

set wildmode=list:longest         " complete files like a shell.
set wildmenu                      " enhanced command line completion.
set wildignore=*.o,*.obj,*~       " stuff to ignore when tab completing

set history=1000                  " store lots of :cmdline history
set sidescrolloff=7
set sidescroll=1
set scrolloff=5                   " Keep 5 lines (top/bottom) for scope

set shortmess=atI                 " shortens messages to avoid 'press a key' prompt 
set nobackup                      " don't make a backup before overwriting a file.
set nowritebackup                 " and again.
set directory=.                   " keep swap files in one location
set timeoutlen=500

set laststatus=2                  " show the status line all the time
set lz                            " do not redraw while running macros (much faster) (LazyRedraw)
set t_Co=256                      " Set terminal to 256 colors
set background=dark
colorscheme pablo

set pastetoggle=<F12>

let mapleader=","

" GUI options
if has("gui_running")
  set guioptions=egrLt
  if has("gui_win32")
    set gfn=Consolas:h10:cANSI
    set lines=50
    set columns=200
    let g:Powerline_symbols = 'compatible'
  endif
else
  " powerline  -- ubuntu package rxvt-unicode-256color required
  let g:Powerline_symbols = 'unicode'
endif

" NERDTree
let NERDTreeShowBookmarks = 0
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"
let NERDTreeHijackNetrw = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeWinSize = 50 
let NERDTreeChDirMode = 2
let NERDTreeDirArrows = 1
map <leader>e :NERDTreeToggle<cr>

" ctrlp.vim
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
let g:ctrlp_map = '<leader>p'

" tComment
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" Configure the Syntastic plugin for automatic syntax checking.
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

" VimClojure
let vimclojure#HighlightBuiltins = 1
let vimclojure#HighlightContrib = 1
let vimclojure#DynamicHighlighting = 1
let vimclojure#ParenRainbow = 1
let vimclojure#WantNailgun = 0

" ack
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
map <leader>a :Ack! 

" tabular
map <leader>t :Tabluarize /

" Indent as many times as you want in visual mode without losing focus
vnoremap < <gv
vnoremap > >gv

" better paste
nmap <silent> <c-p> <esc>:set paste<CR>"*p:set nopaste<CR>
imap <silent> <c-p> <esc>:set paste<CR>"*p:set nopaste<CR>li

" search selected text
vnoremap * y/<C-R>"<CR> 
vnoremap # y?<C-R>"<CR>

" Formatting the current paragraph according to the current 'textwidth'
imap <C-J> <C-O>gqap
nmap <C-J> gqap
vmap <C-J> gq

" next/prev buffer
map <silent> <F1> <ESC>:bprev<CR>
map <silent> <F2> <ESC>:bnext<CR>
imap <silent> <F1> <ESC>:bprev<CR>
imap <silent> <F2> <ESC>:bnext<CR>


