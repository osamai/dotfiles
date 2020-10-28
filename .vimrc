syntax on

filetype plugin indent on

set encoding=utf-8

set nocompatible

set number
set linebreak
set showbreak=++
set ruler
set undolevels=1000
set belloff=all
set splitright
set splitbelow

"set showmatch
set hlsearch
set smartcase
set ignorecase
set incsearch

set nobackup
set nowritebackup
set noswapfile

"set textwidth=100
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set copyindent
set smartindent
set smarttab
set backspace=indent,eol,start

set clipboard+=unnamedplus

set display+=lastline

set updatetime=100

call plug#begin('~/dotfiles/.vim/plugged')
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kien/ctrlp.vim'
Plug 'prettier/vim-prettier'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'rhysd/conflict-marker.vim'
Plug 'brooth/far.vim'
Plug 'wellle/targets.vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-vinegar'
Plug 'easymotion/vim-easymotion'
Plug 'sainnhe/sonokai'
Plug 'joshdick/onedark.vim'
call plug#end()

colorscheme sonokai

let mapleader=" "

let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

let python_highlight_all = 1

let g:NERDTreeWinPos = "right"

let g:airline#extensions#tabline#enabled = 1

inoremap ;; <Esc>

nnoremap <leader>d "_d
xnoremap <leader>d "_d
xnoremap <leader>p "_dP

inoremap <silent><expr> <c-space> coc#refresh()

map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>w <esc>:w<CR>
nnoremap <leader>q <esc>:q<CR>
nnoremap <leader>Q <esc>:q!<CR>
nnoremap <leader>n <esc>:nohlsearch<CR>

execute "set <xUp>=\e[1;*A"
execute "set <xDown>=\e[1;*B"
execute "set <xRight>=\e[1;*C"
execute "set <xLeft>=\e[1;*D"

set autoread

autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
  \ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif

autocmd BufWritePre * :%s/\s\+$//e
