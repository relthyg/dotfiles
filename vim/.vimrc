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
Plugin 'chriskempson/base16-vim'
Plugin 'nelsyeung/twig.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
call vundle#end()            " required

let base16colorspace=256
if has("gui_gtk2")
    set guifont=Monospace\ 11
endif

autocmd FileType php setlocal commentstring=\/\/\ %s
syntax on
filetype plugin indent on

set clipboard=unnamedplus 
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
set nowrap
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


"" php-cs-fixer
"" let g:php_cs_fixer_path = "~/php-cs-fixer.phar" " define the path to the php-cs-fixer.phar
let g:php_cs_fixer_level = "all"                " which level ?
let g:php_cs_fixer_config = "default"           " configuration
let g:php_cs_fixer_php_path = "php"             " Path to PHP
let g:php_cs_fixer_fixers_list = ""             " List of fixers
let g:php_cs_fixer_default_mapping = 1          " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                  " Call command with dry-run option
map <leader>pcd :call PhpCsFixerFixDirectory()<CR>
map <leader>pcf :call PhpCsFixerFixFile()<CR>

