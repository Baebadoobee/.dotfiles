set relativenumber
set number
set numberwidth=4
set cursorline
set shiftwidth=2
set tabstop=2
set ignorecase
set showmatch
set hlsearch
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set wildmenu
set wildmode=list:longest
syntax on
hi Normal guibg=NONE ctermbg=NONE
hi CursorLine cterm=NONE ctermfg=255 ctermbg=130
hi CursorLineNr cterm=NONE ctermfg=255 ctermbg=130

call plug#begin('~/.vim/plugged')

	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'mhinz/vim-startify'
	Plug 'ryanoasis/vim-devicons'
	Plug 'rstacruz/vim-closer'
	Plug 'nathanaelkane/vim-indent-guides'
	Plug 'tpope/vim-surround'
	Plug 'psliwka/vim-smoothie'
	Plug 'preservim/nerdtree'
	Plug 'tc50cal/vim-terminal'
	Plug 'tpope/vim-fugitive'
	Plug 'f-person/git-blame.nvim'
"	Plug 'vim-airline/vim-airline'
"	Plug 'vim-airline/vim-airline-themes'
"	Plug 'bling/vim-bufferline'
"	Plug 'dense-analysis/ale'

call plug#end()


"MAPPINGS  {{{
	nnoremap <space> <Nop>
	let mapleader = " "

"Nav
	noremap <c-h> <c-w>h
	noremap <c-j> <c-w>j
	noremap <c-k> <c-w>k
	noremap <c-l> <c-w>l

"Actions
	noremap <silent><leader>b :e 
	noremap <silent><leader>x :bd<CR>
	noremap <silent><leader>h :split<CR>
	noremap <silent><leader>v :vsplit<CR>
	noremap <silent><leader>q :qa!<CR>
	noremap <silent><leader>w :w<CR>
	noremap <silent><tab> :bnext<CR>
	noremap <silent><F12> :wqa!<CR>

"Tools
	noremap <silent><leader>p :PlugInstall<CR>
	noremap <silent><c-n> :NERDTreeToggle<CR>
	noremap <silent><leader>f :NERDTreeFind<CR>
	noremap <silent><leader>th :colorscheme<leader><c-d>

"By mode -- Modes: nnoremap: Normal, inoremap: Insert, vnoremap: Visual
	"-- Normal --
	nnoremap ; :
	nnoremap <leader>; :!
	nnoremap <leader>o o<esc>
	nnoremap <leader>O O<esc>
	nnoremap Y y$

	"-- Insert --
	inoremap jk <esc>
	inoremap kj <esc>
"}}}

"AUTOSCRIPTS {{{

autocmd VimEnter * NERDTreeFind | wincmd p

"}}}

" STATUSLINE -- check :help statusline {{{
	let g:currentmode={
		\ 'n' : 'NORMAL',
		\ 'v' : 'VISUAL',
		\ 'V' : 'V-LINE',
		\ 'i' : 'INSERT',
		\ 'R' : 'R',
		\ 'Rv' : 'V-REPLACE',
		\ 'c' : 'COMMAND',
	\}

	set laststatus=2
	set noshowmode

	hi StatusLine    ctermfg=130  ctermbg=NONE  cterm=bold
	hi Icon          ctermfg=0    ctermbg=130
	hi NormalC       ctermfg=130  ctermbg=NONE
	hi InsertC       ctermfg=130  ctermbg=NONE
	hi VisualC       ctermfg=130  ctermbg=NONE
	hi CommandC      ctermfg=130  ctermbg=NONE
	hi FileName      ctermfg=0    ctermbg=130
	hi ReadOnly      ctermfg=130  ctermbg=NONE
	hi FolderName    ctermfg=0    ctermbg=130
	hi FileFormat    ctermfg=130  ctermbg=NONE
	hi LinePosition  ctermfg=0    ctermbg=130
	hi Sep           ctermfg=130  ctermbg=NONE


	set statusline=
	set statusline+=%#Icon#
	set statusline+=\ \ 
		set statusline+=%#Sep#
		set statusline+=

	set statusline+=%#NormalC#%{(mode()=='n')?'\ \ NORMAL\ ':''}
	set statusline+=%#InsertC#%{(mode()=='i')?'\ \ INSERT\ ':''}
	set statusline+=%#VisualC#%{(mode()=='v')?'\ \ VISUAL\ ':''}
	set statusline+=%#CommandC#%{(mode()=='c')?'\ \ COMMAND\ ':''}
		set statusline+=%#Sep#
		set statusline+=

	set statusline+=%#FileName#
	set statusline+=\ %{fnamemodify(expand('%:p'),':t')}\ 
		set statusline+=%#Sep#
		set statusline+=

	set statusline+=%#ReadOnly#
	set statusline+=\ %r
	set statusline+=%m
	set statusline+=%=
		set statusline+=%#Sep#
		set statusline+=

	set statusline+=%#FolderName#
	set statusline+=\ \ %{fnamemodify(expand('%:p'),':h:t')}\ 
		set statusline+=%#Sep#
		set statusline+=

	set statusline+=%#FileFormat#
	set statusline+=\ %y
	set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
	set statusline+=\ %{&fileformat}\ 
		set statusline+=%#Sep#
		set statusline+=

	set statusline+=%#LinePosition#
	set statusline+=\ %P\ 󰦪\ %l/%L\ 
"}}}
