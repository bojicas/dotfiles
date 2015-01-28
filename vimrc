set nocompatible
filetype off

"Enable persistent undo
set undofile
set undodir=/tmp
set history=5000

set backupdir=~/.backup
set directory=~/.backup

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'gmarik/Vundle.vim'

filetype plugin indent on

Plugin 'L9'

Plugin 'Shougo/unite.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'

Plugin 'sheerun/vim-polyglot'
"Plugin 'marijnh/tern_for_vim'
"Plugin 'Shougo/neocomplete.vim'

Plugin 'bling/vim-airline'
Plugin 'Lokaltog/vim-powerline'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'
Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'Yggdroot/indentLine'
Plugin 'jlanzarotta/bufexplorer'
" Plugin 'fholgado/minibufexpl.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-endwise'
"Plugin 'ervandew/supertab'
"Plugin 'pangloss/vim-javascript'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'benmills/vimux'

Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-ruby/vim-ruby'
Plugin 'thoughtbot/vim-rspec'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'dsawardekar/portkey'
" Plugin 'dsawardekar/ember.vim'
Plugin 'groenewege/vim-less'

Plugin 'scrooloose/syntastic'

Plugin 'calendar.vim--Matsumoto'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'Gundo'
Plugin 'othree/html5.vim'
Plugin 'jelera/vim-javascript-syntax'

" Plugin 'Rename2'
" Plugin 'ack.vim'
" Plugin 'bufkill.vim'
" Plugin 'csv.vim'
" Plugin 'nerdcommenter'
" Plugin 'supertab'
" Plugin 'textile.vim'
" Plugin 'vim-colors-solarized'
" Plugin 'vim-css3-syntax'
" Plugin 'vim-easymotion'
" Plugin 'vim-git'
" Plugin 'vim-javascript'
" Plugin 'vim-markdown'


set mouse=a
set mousehide
set laststatus=2
set nonumber
let mapleader=","
nmap <silent> <Leader>q :NERDTreeToggle<CR>
set wildmenu
set nowrap

" au VimEnter * set relativenumber
" au insertEnter * set norelativenumber
" au insertEnter * set number
" au insertLeave * set relativenumber
" "next lines are only valid in GUI mode
" au FocusLost * set norelativenumber
" au FocusGained * set number
" au FocusGained * set relativenumber
set relativenumber

set autoindent
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set nojoinspaces

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=l
set guioptions-=L

set t_Co=256
set background=dark
syntax enable
"set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername}
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:h\")})%)%(\ %a%)
set titleold=
set title
" set showtabline=2 "always show tab bar line

if &term =~ '^xterm'
  " solid underscore
  let &t_SI .= "\<Esc>[5 q"
  " solid block
  let &t_EI .= "\<Esc>[1 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
endif

if exists('$TMUX')
  let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[5 q\<Esc>\\"
  let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[1 q\<Esc>\\"
endif

" eliminate delays on ESC
set timeoutlen=500 ttimeoutlen=5

if has("gui_running")
  colorscheme jellybeans
  "colorscheme lucius
else
  "colorscheme jellybeans
  "colorscheme xoria256
  "colorscheme cobalt
  colorscheme twilight256
  "colorscheme molokai
endif

set guifont=PragmataPro:h13

  set encoding=utf-8
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

let g:airline_left_sep = '»'
let g:airline#extensions#tabline#enabled = 1 "smart tab

"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_left_sep = ''
let g:airline_right_sep = ''
"let g:airline_left_sep = ''
let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

if has("autocmd")
  filetype indent plugin on
endif

"matchit configuration
runtime macros/matchit.vim

"search highlight
set incsearch
set hlsearch

"make <C-L> remove search highlight
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"set the shell to bash
set shell=/bin/bash

"set syntax for scala
au BufRead,BufNewFile *.scala set filetype=scala
au BufRead,BufNewFile *.scala.html set filetype=scala

"external copy/paste mode toggle to sort out identation issues
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

map <Esc>[B <Down>

nnoremap <F5> :GundoToggle<CR>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Vim gitgutter
highlight clear SignColumn

highlight clear GitGutterAddLine          "default: links to DiffAdd
highlight clear GitGutterChangeLine       " default: links to DiffChange
highlight clear GitGutterDeleteLine       " default: links to DiffDelete
highlight clear GitGutterChangeDeleteLine " default: links to GitGutterChangeLineDefault, i.e. DiffChange

" syntastic linters
let g:syntastic_ruby_checkers = ['rubocop', 'mri']

" Set hbs filetype to mustache
au BufRead,BufNewFile *.hbs set filetype=mustache
" au BufRead,BufNewFile *.html set filetype=mustache
" au BufRead,BufNewFile *.html set syntax=mustache

" Set filetype for less
au BufRead,BufNewFile *.less set filetype=less

" Set filetype for markdown
au BufRead,BufNewFile *.md set filetype=markdown

" set MiniBufExplorer shortcuts
" map <Leader>me :MBEOpen<cr>
" map <Leader>mc :MBEClose<cr>
" map <Leader>mt :MBEToggle<cr>
" map <Leader>mf :MBEFocus<cr>

set wildignore+=*/tmp/*,*/dist/*,*/node_modules/*,*/vendor/*

let syntastic_mode_map = { 'passive_filetypes': ['html'] }
imap <expr> <C-]> emmet#expandAbbrIntelligent("\<C-]>")

let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = "✗✗"
let g:syntastic_warning_symbol = "!!"
let g:syntastic_enable_balloons = 1

set backspace=indent,eol,start
