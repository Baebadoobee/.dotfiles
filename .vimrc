"     
"                           ███   ██   ▄███▄     ▄▄▄▄▄     
"                           █  █  █ █  █▀   ▀   █     ▀▄   
"                           █ ▀ ▄ █▄▄█ ██▄▄   ▄  ▀▀▀▀▄     
"                           █  ▄▀ █  █ █▄   ▄▀ ▀▄▄▄▄▀      
"         ▄   ▄█ █▀▄▀█ ▄█▄  ██████▄  █ ▄███▄████  ▄█   ▄▀  
"          █  ██ █ █ █ █▀ ▀▄  █   █ █   █  █▀   ▀ ██ ▄▀    
"     █     █ ██ █ ▄ █ █   ▀  █   █▀██   █ █▀▀    ██ █ ▀▄  
"      █    █ ▐█ █   █ █▄  ▄▀ ▀████ █ █  █ █      ▐█ █   █ 
"       █  █   ▐    █  ▀███▀        █  █ █  █      ▐  ███  
"        █▐        ▀                █   ██   ▀             
"        ▐                                                 
"
" Pay attention to the lines: 27, 210, 227 and 232 
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
"set ignorecase "If you activate this, the Modes won't work very well. You may fix it yourself :D
set nowrap
set signcolumn=yes
set showmatch
set hlsearch
set incsearch
set smartcase
set history=1000
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
set wildmenu
set wildmode=list:longest
set mouse=a
set termwinsize=10x200
set completeopt=menuone,preview,noinsert,noselect
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
      let name = bufname(b)!= '' ? fnamemodify(bufname(b), ':t') : ' new-file'
      let modified = getbufvar(b, '&modified') ? '+' : ''
      let current = b == bufnr('%') ? '' : ' '
      let res += [current . name . modified]
    endif
  endfor
  return join(res, ' │')
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
  Plug 'airblade/vim-gitgutter'
  Plug 'girishji/vimcomplete'
  Plug 'morhetz/gruvbox'
	Plug 'dense-analysis/ale'

call plug#end()

"======================================================================
" AUTOSCRIPTS
"======================================================================

autocmd VimEnter * NERDTreeFind | wincmd p | NERDTreeToggle

augroup nerdtreehidecwd
  autocmd!
  autocmd FileType nerdtree setlocal conceallevel=3
          \ | syntax match NERDTreeHideCWD #^[</].*$# conceal
          \ | setlocal concealcursor=n
augroup end

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

autocmd BufEnter NERD_tree_* | execute 'normal R'

autocmd FileType c set omnifunc=ccomplete#Complete

autocmd BufEnter *.md execute 'noremap <F5> :!exec firefox --new-window "%:p"<CR>'

"======================================================================
" MAPPINGS
"======================================================================

"Initial definitions
nnoremap <space> <Nop>
let mapleader = " "

nnoremap <s-l> <Nop>
nnoremap <s-h> <Nop>
nnoremap <s-j> <Nop>
nnoremap <s-k> <Nop>
vnoremap <s-l> <Nop>
vnoremap <s-h> <Nop>
vnoremap <s-j> <Nop>
vnoremap <s-k> <Nop>
let g:smoothie_no_default_mappings = 0

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
noremap <silent><tab> :bnext!<CR>
noremap <silent><F12> :wqa!<CR>

"Tools
noremap <silent><leader>p :PlugInstall<CR>
noremap <silent><leader>a :ALEToggleBuffer<CR>
noremap <silent><c-n> :NERDTreeToggle<CR>
noremap <silent><leader>f :NERDTreeFind<CR>
noremap <silent><leader>th :colorscheme<leader><c-d>
noremap <silent><leader>h :bo term<CR>
tnoremap <silent><leader>h exit<CR>

"Modes
  "Normal
  nnoremap ç :
  nnoremap ; :
  nnoremap \ 0ci"
  nnoremap <leader>; :!
  nnoremap <leader>uv :!exec $HOME/.pushvim.ps1 &<CR>
  nnoremap <leader>o o<esc>
  nnoremap <leader>O O<esc>
  nnoremap Y y$
  nnoremap <silent> <s-k> <Plug>(SmoothieUpwards)
  nnoremap <silent> <s-j> <Plug>(SmoothieDownwards)

  "Insert
  inoremap jk <esc>
  inoremap kj <esc>
  inoremap <expr> <Tab> pumvisible() ? "\<CR>" : "\<Tab>"

  "Visual
  vnoremap <silent> <s-k> <Plug>(SmoothieUpwards)
  vnoremap <silent> <s-j> <Plug>(SmoothieDownwards)

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
let NERDTreeWinPos="right"
let NERDTreeWinSize=30
let g:NERDTreeMinimalUI=1
let g:NERDTreeMinimalMenu=1
let g:NERDTreeCascadeSingleChildDir=1
let g:NERDTreeStatusline ='%#NonText#'
let g:currentmode={
  \ 'n' : 'NORMAL',
  \ 'v' : 'VISUAL',
  \ 'V' : 'V-LINE',
  \ '\' : 'V-BLOCK',
  \ 'i' : 'INSERT',
  \ 't' : 'TERM',
  \ 'R' : 'R',
  \ 'Rv' : 'V-REPLACE',
  \ 'c' : 'COMMAND',
\}

"Colors
  "Layout Colors
  hi Normal guibg=NONE ctermbg=NONE
  hi EndOfBuffer cterm=NONE ctermbg=NONE ctermfg=0
  hi! link SignColumn                 EndOfBuffer
  hi! link StatusLineNC               Normal
  hi! link VertSplit                  Statement
  hi! link CursorLine                 ErrorMsg
  hi! link CursorLineNr               ErrorMsg
  hi! link CursorLineSign             CursorLine
  hi! link SingColumn                 CursorLineSign
  hi! link ALESignColumnWithoutErrors LineNrAbove
  hi! link ALEError                   LineNrAbove
  hi! link ALEWarning                 LineNrAbove
  hi! link ALEInfo                    LineNrAbove
  hi! link ALEErrorSign               WarningMsg
  hi! link ALEWarningSign             MoreMsg
  hi! link ALEInfoSign                Title
  hi! link ALEErrorLine               WarningMsg
  hi! link GitGutterAdd               Function
  hi! link GitGutterChange            Changed
  hi! link GitGutterDelete            WarningMsg
  hi! link GitGutterChangeDelete      Removed

  "Statusline Colors
  hi! link StatusLine   WarningMsg
  hi! link ModeC        WarningMsg
" hi! link NormalC      WarningMsg "You can try this aproach to assign different colors for each mode
" hi! link InsertC      WarningMsg 
" hi! link VisualC      WarningMsg
" hi! link CommandC     WarningMsg
" hi! link TermC        WarningMsg
  hi! link ReadOnly     WarningMsg
  hi! link FileFormat   WarningMsg
  hi! link Sep          WarningMsg
  hi! link FileName     ErrorMsg
  hi! link Icon         ErrorMsg
  hi! link FolderName   ErrorMsg
  hi! link LinePosition ErrorMsg

"StatusLine customization
set statusline=
  "set statusline+=%#Sep#
set statusline+=%#Icon#\ \ 
  set statusline+=%#Sep#
set statusline+=%#ModeC# "Keep in mind that you can create a function to clean up the mode theming lines
set statusline+=%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%{(mode()=='V')?'\ \ V-LINE\ ':''}
set statusline+=%{(char2nr(mode())==22)?'\ \ V-BLOCK\ ':''} "Idfk why it was only accepting a literal '\' 
set statusline+=%{(mode()=='Rv')?'\ \ V-REPLACE\ ':''}
set statusline+=%{(mode()=='R')?'\ 󰬳\ REPLACE\ ':''}
set statusline+=%{(mode()=='c')?'\ \ COMMAND\ ':''}
set statusline+=%{(mode()=='t')?'\ \ TERM\ ':''}
  set statusline+=%#Sep#
set statusline+=%#FileName#\%{BufferList()}\ 
  set statusline+=%#Sep#
set statusline+=%#ReadOnly#\ %r%m%=
  set statusline+=%#Sep#
set statusline+=%#FolderName#\ \ %{fnamemodify(expand('%:p'),':h:t')}\ 
set statusline+=│
  "set statusline+=%#Sep#
"set statusline+=%#FileFormat#
"set statusline+=\ %y
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\ %{&fileformat}\ 
  "set statusline+=%#Sep#
set statusline+=%#LinePosition#
set statusline+=\ %P\ 󰦪\ %l/%L\ 
  "set statusline+=%#Sep#
