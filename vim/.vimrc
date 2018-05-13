set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader=","             " <leader> is ,

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
Plugin 'blueyed/smarty.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-commentary.git'
Plugin 'chriskempson/base16-vim'
Plugin 'nelsyeung/twig.vim'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()            " required

filetype plugin indent on    " required

autocmd FileType php setlocal commentstring=\/\/\ %s
set clipboard=unnamedplus " Use standard X register as clipboard
set mouse=a " Allow mouse
set autoindent " Use autoindent
set hidden " switch between buffers without saving

""
" COLORS
"
syntax on " Use syntax highlighting

" if has('gui_running')
let base16colorspace=256
" set background=light
" colorscheme base16-atelier-forest
if has("gui_gtk2")
    set guifont=Noto\ Mono\ 10
endif
" endif

""
" SPACES AND TABS
"
set tabstop=4 " Number of visual spaces per TAB
set softtabstop=4 " Number of spaces per TAB when editing
set shiftwidth=4 " when indenting with '>', use 4 spaces width
set expandtab " Tabs are spaces

""
" UI Config
"
set number " show line numbers
filetype plugin indent on " load plugin-specific indent files
set wildmenu " visual autocomplete for command menu (e.g. :e ~/.vim[TAB])
set lazyredraw " redraw only when we need to.
set showmatch " highlight matching [{()}]
set cmdheight=2 " Set command line height
set nowrap " Turn off linewrap
set laststatus=2

""
" Searching
"
set incsearch " search as characters are entered
set hlsearch " highlight matches

" Define my own grep command
command! -nargs=+ Grep execute 'silent grep! -r <args>' | copen | redraw

""
" Custom
"

" turn off search highlight with <leader><space>
nnoremap <leader><space> :nohlsearch<CR>

" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1

" Write as superuser
cmap w!! w !sudo tee > /dev/null %

" Map ß to $
nnoremap ß $

" Autoformat document
nnoremap <leader>f gg=G''

"" Tab triggers buffer-name auto-completion
set wildchar=<Tab> wildmenu wildmode=full

map <Leader>t :CommandT<Return>
map <Leader>a :bprev<Return>
map <Leader>s :bnext<Return>
map <Leader>d :bd<Return>

"" Show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

"" Search and replace for selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
