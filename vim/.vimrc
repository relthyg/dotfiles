set nocompatible
filetype off
let mapleader=","

" Vundle init
set rtp+=~/.vim/bundle/vundle

" Require Vundle
try
    call vundle#rc()
catch
    echohl Error | echo "Vundle is not installed. Run 'cd ~/.vim/ && git submodule init && git submodule update'" | echohl None
endtry

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'milkypostman/vim-togglelist'
Plugin 'tpope/vim-surround'
Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-commentary.git'
Plugin 'nelsyeung/twig.vim'
Plugin 'vim-airline/vim-airline'
call vundle#end()            " required

let base16colorspace=256
set t_Co=256
if has("gui_gtk2")
    set guifont=Roboto\ Mono\ 11
endif

autocmd FileType php setlocal commentstring=\/\/\ %s
syntax on
filetype plugin indent on

if system('uname -s') == "Darwin\n"
  set clipboard=unnamed "OSX
else
  set clipboard=unnamedplus "Linux
endif

set mouse=a
set autoindent
set hidden

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set number
set wildmenu
set lazyredraw
set showmatch
set cmdheight=2
set wrap linebreak nolist
set laststatus=2

set incsearch
set hlsearch

set wildchar=<Tab> wildmenu wildmode=full

nnoremap <leader><space> :nohlsearch<CR>

map <Leader>a :bprev<Return>
map <Leader>s :bnext<Return>
map <Leader>d :bd<Return>

cmap w!! w !sudo tee > /dev/null %
nnoremap <leader>f gg=G''
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

"" NERDTree
nnoremap <leader>t :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1

