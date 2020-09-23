call plug#begin("~/.vim/plugged")
	Plug 'dracula/vim'
	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

  Plug 'tpope/vim-fugitive'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'fatih/vim-go'
  Plug 'sheerun/vim-polyglot'
call plug#end()


if (has("termguicolors"))
	set termguicolors
endif


" GENERAL SETTINGS
syntax enable
colorscheme dracula
set termguicolors                                       
set mouse=a                                             
set clipboard+=unnamedplus                              
filetype plugin indent on
set tabstop=2 softtabstop=2 shiftwidth=2 autoindent
set expandtab smarttab
set incsearch ignorecase smartcase hlsearch
set backspace=indent,eol,start
set emoji
set encoding=utf-8
set number
set title
set noshowmode


" performance tweaks
set nocursorline
set nocursorcolumn
set scrolljump=5
set lazyredraw
set redrawtime=10000
set synmaxcol=180
set re=1


" required by coc
set hidden
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes


" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


" GO
let g:go_def_mapping_enabled = 0


" NERDTREE
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" open new split panes to right and below
set splitright
set splitbelow


" KEYMAPPINGS
let mapleader=","
nnoremap ; :

" Nerdtree
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l


