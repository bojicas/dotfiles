set nocompatible
filetype off

"Enable persistent undo
set undofile
set undodir=/tmp
set history=5000

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

filetype plugin indent on

Bundle 'L9'

Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'

Bundle 'sheerun/vim-polyglot'

Bundle 'bling/vim-airline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Yggdroot/indentLine'
Bundle 'jlanzarotta/bufexplorer'
"Bundle 'fholgado/minibufexpl.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-endwise'

Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-ruby/vim-ruby'
Bundle 'thoughtbot/vim-rspec'
Bundle 'airblade/vim-gitgutter'
Bundle 'mattn/emmet-vim'
Bundle 'mustache/vim-mustache-handlebars'

Bundle 'scrooloose/syntastic'

Bundle 'calendar.vim--Matsumoto'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

Bundle 'bbatsov/rubocop'

Bundle 'Gundo'

set mouse=a
set mousehide
set laststatus=2
set number
let mapleader=","
nmap <silent> <Leader>q :NERDTreeToggle<CR>
set wildmenu
set nowrap

au VimEnter * set relativenumber
au insertEnter * set norelativenumber
au insertEnter * set number
au insertLeave * set relativenumber
"next lines are only valid in GUI mode
au FocusLost * set norelativenumber
au FocusGained * set number
au FocusGained * set relativenumber
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
set showtabline=2 "always show tab bar line

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

" eliminate delays on ESC
set timeoutlen=500 ttimeoutlen=5

if &term =~ "256color"
  set guifont=Sauce\ Code\ Powerline:h14

  colorscheme solarized
  set encoding=utf-8
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  let g:airline_left_sep = '»'
  let g:airline#extensions#tabline#enabled = 1 "smart tab

  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline#extensions#tabline#right_sep = ''
  let g:airline#extensions#tabline#right_alt_sep = ''
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.whitespace = 'Ξ'

  let g:airline_left_sep = ''
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

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
