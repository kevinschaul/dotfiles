" Load vim-plug plugins
call plug#begin()
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/nerdcommenter'

" Note: To full install this, you need to cd into .vim/plugins/YouCompleteMe and run ./install.py
Plug 'Valloric/YouCompleteMe'

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
call plug#end()

" TODO
" - map nerdcommenter to command-/

let mapleader = ","

filetype plugin on

color desert

set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

set foldmethod=indent
set foldlevel=10
set modelines=0
set encoding=utf-8
set scrolloff=8
set showmode
set number
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set statusline=%<%f%h%m%r%=%b\ 0x%B\ \ %l,%c%V\ %P
set colorcolumn=80
set wildignore+=*/node_modules/*
set autoread
set noswapfile

set textwidth=79
set formatoptions=qrn1

" Set up/down movement to move one visual line when wrapped
nnoremap j gj
nnoremap k gk

set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

inoremap jj <esc>
inoremap jw <esc>:w

" Use ; as : for less shift pressing
nnoremap ; :

" Reformat text wrapping for current paragraph
nnoremap <leader>q gqip

" Move to splits with fewer keys
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use ,t to activate FZF fuzzy file finder
nnoremap <leader>t :FZF<enter>

" Use ,f to search files for a given string
nnoremap <leader>f :Ag<CR>

" Enable tab completion
" call deoplete#enable()
" Cycle through completion options on tab
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Toggle comments with ,/ or cmd/
" TODO not working
" map <leader>/, NERDCommenterToggle

" Git shortcuts (fugitive)
" https://github.com/carlhuda/janus/blob/master/janus/vim/tools/janus/after/plugin/fugitive.vim
"nnoremap <leader>gs :Gstatus<CR>
"nnoremap <leader>gc :Gcommit -a<CR>
"nnoremap <leader>gp :Git push<CR>
"nnoremap <leader>gl :Git pull<CR>

" Disable git gutter mappings
"let g:gitgutter_map_keys = 0
" Always show git gutter (even if there ar eno changes)
"set signcolumn=yes

if has("gui_macvim")
  set guifont=Menlo\ Regular:h18

  " Set up control tab shortcuts for switching between tabs
  " https://superuser.com/questions/382060/shortcut-to-switch-tabs-in-macvim
  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>
else
  set mouse=a
  set clipboard=unnamed
endif

" Always change current directory when changing in NERDTree
let g:NERDTreeChDirMode=2

" Toggle NERDTree on ,n
nnoremap <Leader>n :NERDTreeToggle<Enter>

