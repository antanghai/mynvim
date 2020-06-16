set nocompatible
let mapleader=' '
set mouse=a
"set encoding=utf-8
set autochdir
let &t_ut=''

" ======== indent settings ========
set expandtab
set smarttab
set smartindent
"set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

autocmd Filetype c,cpp,java,python,go,javascript,css,json
      \ setlocal tabstop=4 softtabstop=4 shiftwidth=4 cindent
autocmd Filetype vim,sh,html,xml,yaml,markdown
      \ setlocal tabstop=2 softtabstop=2 shiftwidth=2

set shiftround

"set foldmethod=indent
set laststatus=2
set foldlevel=99
" up的是7
set scrolloff=4
"set clipboard=unnamedplus

set number
"set list
set relativenumber
set cursorline
"set cursorcolumn
set ruler
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

" ========== key board map =========

" spilling vim windos
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>


" focus or resize the vim window
map dl <C-w>l
map dh <C-w>h
map dj <C-w>j
map dk <C-w>k

" map <Up> :resize -5<CR>
" map <Down> :resize +5<CR>
" map <Left> :vertical resize -5<CR>
" map <Right> :vertical resize +5<CR>

map <LEADER><up> :res +5<CR>
map <LEADER><down> :res -5<CR>
map <LEADER><left> :vertical resize-5<CR>
map <LEADER><right> :vertical resize+5<CR>


" map te :tabe<CR>
" map = :tabnext<CR>
" map - :-tabnext<CR>

" create a new vim window and focus
map tj :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>
" map <LEADER>rc :e ~/.config/nvim/init.vim<CR>

noremap <LEADER><CR> :nohlsearch<CR>

noremap <LEADER><LEADER> <ESC>/<++><CR>:nohlsearch<CR>c4l

noremap <LEADER>b i****<ESC>hi





" ==========================我的一些特殊配置=============

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set list
set listchars=tab:▸\ ,trail:▫
set tw=0
set indentexpr=
set backspace=indent,eol,start
"set foldmethod=indent
set foldenable
set viewoptions=cursor,folds,slash,unix
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set number
syntax on
set clipboard=unnamedplus
"set clipboard+=unnamed

" noremap tab  <LEADER><LEADER><LEADER><LEADER>

noremap K 5k    
noremap J 5j    
noremap q h
noremap e l
"noremap z v
noremap X c<RIGHT>


"spelling check keyboard
map ck :set spell!<CR>
noremap ss [s
noremap s ]s
noremap mo ea<C-x>s<Esc>
inoremap <C-x> <Esc>ea<C-x>s

map W :w<CR>
map Q :q<CR>
map S :wq<CR>
map shell :r!
map R :source $MYVIMRC<CR>
map rg :RnvimrToggle<CR>
" map os :w !sudo tee % <CR>




"Ctrl+a
map <C-A> ggVG
map! <C-A> <Esc>ggVGY
map <F12> gg=G
"Ctrl+c
vmap <C-c> "+y

" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H
