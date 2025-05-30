set relativenumber
set cursorline
set shiftwidth=2
set tabstop=2
set ignorecase
set showmatch
set hlsearch
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
syntax on
set wildmenu
set wildmode=list:longest

call plug#begin('~/.vim/plugged')

	Plug 'dense-analysis/ale'
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'mhinz/vim-startify'
	Plug 'ryanoasis/vim-devicons'
	Plug 'vim-airline/vim-airline'
	Plug 'gruvbox-community/gruvbox'
	Plug 'rstacruz/vim-closer'
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'tpope/vim-surround'
	Plug 'psliwka/vim-smoothie'
	Plug 'preservim/nerdtree'
	Plug 'tc50cal/vim-terminal'

call plug#end()

colorscheme gruvbox

"MAPPINGS -- Modes: nnoremap: Normal, inoremap: Insert, vnoremap: Visual {{{
	nnoremap <space> <Nop>
	let mapleader = " "

	noremap <leader>p :PlugInstall<CR>
	noremap <c-h> <c-w>h
	noremap <c-j> <c-w>j
	noremap <c-k> <c-w>k
	noremap <c-l> <c-w>l
	noremap <c-n> :NERDTreeToggle<CR>
	noremap <leader>f :NERDTreeFind<CR>
	noremap <leader>b :e new-file<CR>
	noremap <tab> :bnext<CR>

	nnoremap ; :
	nnoremap <leader>o o<esc>
	nnoremap <leader>O O<esc>
	nnoremap Y y$

	inoremap jk <esc>
	inoremap kj <esc>
"}}}
