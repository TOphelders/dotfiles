set nocompatible
filetype off
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'            "Better status line
Plug 'kien/ctrlp.vim'               "Fuzzy file searching
Plug 'mxw/vim-jsx'                  "JSX syntax highlighting/indenting
Plug 'pangloss/vim-javascript'      "Required for vim-jsx
Plug 'Raimondi/delimitMate'         "Completes parens, etc.
Plug 'Shougo/deoplete.nvim'         "Better autocompletion
Plug 'tomasr/molokai'               "Molokai colour scheme
Plug 'tpope/vim-fugitive'            "Vim git wrapper

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'} "File tree
call plug#end()

filetype indent plugin on

"Colourscheme configurations
set t_Co=256
syntax enable
colorscheme molokai

"Tab completion
set wildmenu
set wildmode=longest:full,full

"Better searching
set hlsearch
set ignorecase
set smartcase
nnoremap <silent><CR> :noh<CR><CR>

"Line display
set number
set ruler

"Global copy/paste
set clipboard+=unnamedplus

"Indent/word wrap settings
set shiftwidth=2
set tabstop=2
set autoindent
set expandtab
set showbreak=↪

"Allows using Alt+{h, j, k, l} to navigate between windows
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

"Airline Configurations
set laststatus=2
set ttimeoutlen=50

"Remap NERDTree
map <C-n> :NERDTreeToggle<CR>

"Use deoplete
"let g:deoplete#enable_at_startup = 1
