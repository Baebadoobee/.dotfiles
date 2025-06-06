
"======================================================================
" INDENTATION AND MISC
"======================================================================

set relativenumber
set number
set numberwidth=4
set cursorline
set shiftwidth=2
set tabstop=2
set expandtab
set nobackup
set ignorecase
set showmatch
set hlsearch
set incsearch
set smartcase
set history=1000
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set wildmenu
set wildmode=list:longest
set mouse=a
set termwinsize=20x200
syntax on
filetype on
filetype plugin on
filetype indent on

"======================================================================
" Functions
"======================================================================

function! BufferList()
  let all = range(1, bufnr('$'))
  let res = []
  for b in all
    if buflisted(b)
      let name = bufname(b)!= '' ? fnamemodify(bufname(b), ':t') : '[No Name]'
      let modified = getbufvar(b, '&modified') ? '+' : ''
      let current = b == bufnr('%') ? '' : ' '
      let res += [current . name . modified]
    endif
  endfor
  return join(res, ' │ ')
endfunction

"======================================================================
" PLUGINS
"======================================================================

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
  Plug 'girishji/vimcomplete'
  Plug 'morhetz/gruvbox'
	Plug 'dense-analysis/ale'

call plug#end()

"======================================================================
" MAPPINGS
"======================================================================

"Initial definitions
nnoremap <space> <Nop>
nnoremap <s-l> <Nop>
nnoremap <s-h> <Nop>
nnoremap <s-j> <Nop>
nnoremap <s-k> <Nop>
vnoremap <s-l> <Nop>
vnoremap <s-h> <Nop>
vnoremap <s-j> <Nop>
vnoremap <s-k> <Nop>
let mapleader = " "
let g:smoothie_no_default_mappings = 1

"Navigation
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
nnoremap <s-l> $
nnoremap <s-h> 0
  "Terminal
  tmap <c-h> <c-w>h
  tmap <c-j> <c-w>j
  tmap <c-k> <c-w>k
  tmap <c-l> <c-w>l

"Actions
noremap <silent><leader>b :e 
noremap <silent><leader>x :bd<CR>
noremap <silent><leader>s :split<CR>
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
noremap <silent><leader>h :bo term<CR>
tnoremap <silent><leader>h exit<CR>

"Modes
  "Normal
  nnoremap ç :
  nnoremap ; :
  nnoremap <leader>; :!
  nnoremap <leader>o o<esc>
  nnoremap <leader>O O<esc>
  nnoremap Y y$
  nnoremap <silent> <s-k> <Plug>(SmoothieUpwards)
  nnoremap <silent> <s-j> <Plug>(SmoothieDownwards)

  "Insert
  inoremap jk <esc>
  inoremap kj <esc>

  "Visual
  vnoremap <silent> <s-k> <Plug>(SmoothieUpwards)
  vnoremap <silent> <s-j> <Plug>(SmoothieDownwards)


"======================================================================
" AUTOSCRIPTS
"======================================================================

autocmd VimEnter * NERDTreeFind | wincmd p | NERDTreeToggle

"======================================================================
" THEMING 
"======================================================================

"Initial definitions
colorscheme gruvbox
set background=dark
set laststatus=2
set noshowmode
set fillchars=eob:\ 
set fillchars=vert:\│
let g:NERDTreeMinimalUI=1
let g:NERDTreeMinimalMenu=1
let g:NERDTreeCascadeSingleChildDir=1
let g:NERDTreeStatusline ='%#NonText#'
let g:currentmode={
  \ 'n' : 'NORMAL',
  \ 'v' : 'VISUAL',
  \ 'V' : 'V-LINE',
  \ 'i' : 'INSERT',
  \ 't' : 'TERM',
  \ 'R' : 'R',
  \ 'Rv' : 'V-REPLACE',
  \ 'c' : 'COMMAND',
\}

"Colors
  "Layout Colors
  hi Normal guibg=NONE ctermbg=NONE
  hi! link StatusLineNC Normal
  hi! link CursorLine ErrorMsg
  hi! link CursorLineNr ErrorMsg
  hi EndOfBuffer cterm=NONE ctermbg=NONE ctermfg=0
  hi! link VertSplit Statement

  "Statusline Colors
  hi! link StatusLine   WarningMsg
  hi! link NormalC      WarningMsg
  hi! link InsertC      WarningMsg 
  hi! link VisualC      WarningMsg
  hi! link CommandC     WarningMsg
  hi! link TermC        WarningMsg
  hi! link ReadOnly     WarningMsg
  hi! link FileFormat   WarningMsg
  hi! link Sep          WarningMsg
  hi! link FileName     ErrorMsg
  hi! link Icon         ErrorMsg
  hi! link FolderName   ErrorMsg
  hi! link LinePosition ErrorMsg


"StatusLine customization
set statusline=
set statusline+=%#Icon#
set statusline+=\ \ 
  set statusline+=%#Sep#
  set statusline+=
set statusline+=%#NormalC#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#InsertC#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#VisualC#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#CommandC#%{(mode()=='c')?'\ \ COMMAND\ ':''}
set statusline+=%#TermC#%{(mode()=='t')?'\ \ TERM\ ':''}
  set statusline+=%#Sep#
  set statusline+=
set statusline+=%#FileName#
set statusline+=\%{BufferList()}\ 
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
