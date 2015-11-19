set nocompatible
filetype off

"Enable persistent undo
set undofile
set undodir=/tmp
set history=5000

set backupdir=~/.backup
set directory=~/.backup

filetype plugin indent on

set rtp+=~/.config/nvim/autoload/plug.vim
call plug#begin('~/.vim/plugged')

"Plug 'gmarik/Vundle.vim'

Plug 'L9'

Plug 'mhinz/vim-grepper'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/unite.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'sheerun/vim-polyglot'
" Plug 'marijnh/tern_for_vim'
" Plug 'Shougo/neocomplete.vim'

Plug 'bling/vim-airline'
Plug 'Lokaltog/vim-powerline'
Plug 'flazz/vim-colorschemes'
" Plug 'altercation/vim-colors-solarized'
Plug 'mhartington/oceanic-next'
"Plug 'mikker/Spacedust-theme.vim'
Plug 'nathanaelkane/vim-indent-guides'
" Plug 'Yggdroot/indentLine'
Plug 'jlanzarotta/bufexplorer'
" Plug 'fholgado/minibufexpl.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'
"Plug 'ervandew/supertab'
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/vimshell.vim'
Plug 'benmills/vimux'

Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-unimpaired'
Plug 'vim-ruby/vim-ruby'
Plug 'thoughtbot/vim-rspec'
Plug 'airblade/vim-gitgutter'
Plug 'mattn/emmet-vim'
Plug 'mustache/vim-mustache-handlebars'
" Plug 'dsawardekar/portkey'
" Plug 'dsawardekar/ember.vim'
Plug 'groenewege/vim-less'
Plug 'kchmck/vim-coffee-script'
Plug 'wavded/vim-stylus'

" Plug 'scrooloose/syntastic'
Plug 'benekastah/neomake'

Plug 'calendar.vim--Matsumoto'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

Plug 'Gundo'
Plug 'othree/html5.vim'
"Plug 'jelera/vim-javascript-syntax'

Plug 'rizzatti/dash.vim'

" Plug 'Rename2'
Plug 'mileszs/ack.vim'
" Plug 'bufkill.vim'
" Plug 'csv.vim'
" Plug 'nerdcommenter'
" Plug 'supertab'
" Plug 'textile.vim'
" Plug 'vim-colors-solarized'
" Plug 'vim-css3-syntax'
" Plug 'vim-easymotion'
" Plug 'vim-git'
" Plug 'vim-javascript'
" Plug 'vim-markdown'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'junegunn/fzf.vim'

call plug#end()

set mouse=a
set mousehide
set laststatus=2
set nonumber
let mapleader=","
"" autocmd StdinReadPre * let s:std_in=1
"" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
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
  colorscheme OceanicNext
  "colorscheme jellybeans
  "colorscheme lucius
else
  set background=dark
  "colorscheme lucius
  "colorscheme jellybeans
  "colorscheme xoria256
  "colorscheme cobalt
  "colorscheme twilight256
  "colorscheme molokai
  colorscheme OceanicNext
  "colorscheme Tomorrow-Night
  "colorscheme solarized
  "colorscheme zenburn
  "colorscheme spacedust
endif

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h14

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
" let g:syntastic_ruby_checkers = ['rubocop', 'mri']
" let g:syntastic_javascript_checkers = ['eslint']
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_coffeescript_enabled_makers = ['coffeelint']
autocmd! BufRead,BufWritePost * Neomake

" Set hbs filetype to mustache
au BufRead,BufNewFile *.hbs set filetype=mustache
" au BufRead,BufNewFile *.html set filetype=mustache
" au BufRead,BufNewFile *.html set syntax=mustache

" Set filetype for less
au BufRead,BufNewFile *.less set filetype=less

" Set filetype for markdown
au BufRead,BufNewFile *.md set filetype=markdown

" Set filetype for coffeescript
au BufRead,BufNewFile *.coffee set filetype=coffee

" Set fietype for stylus
au BufRead,BufNewFile *.styl set filetype=stylus

" set MiniBufExplorer shortcuts
" map <Leader>me :MBEOpen<cr>
" map <Leader>mc :MBEClose<cr>
" map <Leader>mt :MBEToggle<cr>
" map <Leader>mf :MBEFocus<cr>

set wildignore+=*/tmp/*,*/dist/*,*/node_modules/*,*/vendor/*

" let syntastic_mode_map = { 'passive_filetypes': ['html'] }
imap <expr> <C-]> emmet#expandAbbrIntelligent("\<C-]>")

" let g:syntastic_check_on_open = 1
" let g:syntastic_error_symbol = "✗✗"
" let g:syntastic_warning_symbol = "!!"
" let g:syntastic_enable_balloons = 1

set backspace=indent,eol,start

highlight ColorColumn ctermbg=7
set colorcolumn=81

" let g:indent_guides_auto_colors = 0
" let g:indent_guides_guide_size = 1
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=235
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=235
" au BufRead,BufNewFile * :IndentGuidesEnable

set grepprg=ack

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

set cursorline

hi CursorLine cterm=NONE ctermbg=234

set wildignore+=.meteor/**,.idea/**

let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"

let g:ackprg = 'ag --nogroup --nocolor --column'
" let g:ackprg = 'ag --vimgrep'

" Use deoplete.
let g:deoplete#enable_at_startup = 1

nnoremap <leader>git :Grepper  -tool git -open -nojump
nnoremap <leader>ag  :Grepper! -tool ag  -open -switch
nnoremap <leader>ack  :Ack 
nnoremap <leader>ff  :FZF<cr>
nnoremap <leader>fp  :Ag<cr>
nnoremap <leader>u  :Unite
nnoremap <leader>un  :Unite<cr>
nnoremap <leader>uf  :Unite file<cr>
nnoremap <leader>ub  :Unite buffer<cr>
nnoremap <leader>ufb  :Unite file buffer<cr>

command! -nargs=* -complete=file GG Grepper! -tool git -query <args>
command! -nargs=* -complete=file Ag Grepper! -tool ag -query <args>

set spell
