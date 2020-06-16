"******************************************************
"  _____                ____  _                       *
" |__  /___ _ __ ___   / ___|| |__   __ _ _ __ _ __   *
"   / // _ \ '__/ _ \  \___ \| '_ \ / _` | '__| '_ \  *
"  / /|  __/ | | (_) |  ___) | | | | (_| | |  | |_) | *
" /____\___|_|  \___/  |____/|_| |_|\__,_|_|  | .__/  *
"                                             |_|     *
"                                                     *
"******************************************************

" " ====================snazzy(导入到appearance文件里)=========
" " 透明背景
" let g:SnazzyTransparent = 1
" " 灯光线配色
" let g:lightline = {
" \ 'colorscheme': 'snazzy',
" \ }
" ===自定义配置(基础配置)
" ==================================================================================

" ===================================================================================

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

if has("autocmd")
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

source ~/.config/nvim/conf.d/base.vim

" ======== load plugin ========
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.config/nvim/plugged')
" Appearance
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
" 一种配色
Plug 'tomasr/molokai'
let g:rehash256 = 1
let g:molokai_original = 1
" 文件类型图标添加到Vim插件(要匹配字体)
" Plug 'ryanoasis/vim-devicons'
" Plug 'rafalbromirski/vim-airlineish'  一种配色(转换)





" VIM成为PDF阅读器
Plug 'makerj/vim-pdf'
" File navigation
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'dense-analysis/ale'

" Auto Complete
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" Depend on https://github.com/OmniSharp/omnisharp-roslyn

Plug 'OmniSharp/omnisharp-vim'
" 文件类型插件?
Plug 'preservim/nerdcommenter'

" Far.vim makes it easier to find and replace text through multiple files.
Plug 'brooth/far.vim'
" ranger with flow window
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
" Code Format
Plug 'Chiel92/vim-autoformat'

" Undo Tree
" 撤销历史记录可视化工具
Plug 'mbbill/undotree/'

" Search
Plug 'rking/ag.vim'

" Other visual enhancement
Plug 'Yggdroot/indentLine'

" Json
Plug 'leshill/vim-json'

" html css js
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'

" Python
Plug 'vim-scripts/indentpython.vim'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }

"UML
Plug 'aklt/plantuml-syntax', { 'for': ['plantuml'] }

" Markdown
" vim的markdown预览插件
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'godlygeek/tabular'
"VIM表格模式
Plug 'dhruvasagar/vim-table-mode'
Plug 'mzlogin/vim-markdown-toc'
" 代办清单，整理笔记什么的


" vim startify(借用)花式的Vim启动屏幕
Plug 'mhinz/vim-startify'
" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'skywind3000/asyncrun.vim'
Plug 'lambdalisue/suda.vim'

call plug#end()
source ~/.config/nvim/conf.d/appearance.vim
source ~/.config/nvim/conf.d/coc.vim
source ~/.config/nvim/conf.d/myfunc.vim

set completeopt=menu
" ===
" === MarkdownPreview
" ===

" When you with your md file you will see your contents on web browsers
" 当您使用md文件时，您将在web浏览器上看到您的内容
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_comand_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = 'google-chrome-stable'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
"" ======== indentLine ========
autocmd FileType markdown let g:indentLine_enabled = 0
let g:indentLine_setConceal = 1

" ===
" === NERDTree
" ===
map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=25
" automatically startup NERDTree when open a file using nvim then focus the file instead of nerdtree toggle.
autocmd vimenter * NERDTree
" 自动启动NERDTree，然后聚焦该文件
" autocmd vimenter * NERDTreeFocusToggle
let g:nerdtree_tabs_smart_startup_focus=2
" automatically startup NERDTree when open a directory using nvim
" 使用nvm打开目录时自动启动NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif



" NERDTree-git
let g:NERDTreeIndicatorMapCustom = {
      \ "Modified"  : "✹",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "➜",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "✖",
      \ "Dirty"     : "✗",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '☒',
      \ "Unknown"   : "?"
      \ }

" ===
" === Far.vim
" ===
noremap <LEADER>f :F  %<left><left>
set lazyredraw            " improve scrolling performance when navigating through large results
set regexpengine=1        " use old regexp engine
set ignorecase smartcase  " ignore case only when the pattern contains no capital letters
" shortcut for far.vim find
nnoremap <silent> <Find-Shortcut>  :Farf<cr>
vnoremap <silent> <Find-Shortcut>  :Farf<cr>
" shortcut for far.vim replace
nnoremap <silent> <Replace-Shortcut>  :Farr<cr>
vnoremap <silent> <Replace-Shortcut>  :Farr<cr>


" ===
" === Undotree
" ===
noremap L :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
	nmap <buffer> u <plug>UndotreeNextState
	nmap <buffer> e <plug>UndotreePreviousState
	nmap <buffer> U 5<plug>UndotreeNextState
	nmap <buffer> E 5<plug>ndotreePreviousState
endfunc

" ===
" === FZF
" ===

map ff :FZF<CR>



" html css js
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END
set conceallevel=0
set concealcursor="v"
augroup VimCSS3Syntax
  autocmd!
  autocmd FileType css setlocal iskeyword+=-
augroup END

" 仅启用html / css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Taglist
map T :TagbarOpenAutoClose<CR>

" ======== vim-table-mode(markdown的自动化表格) ========
let g:table_mode_corner='|'
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
      \ <SID>isAtStartOfLine('\|\|') ?
      \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
      \ <SID>isAtStartOfLine('__') ?
      \ '<c-o>:silent! TableModeDisable<cr>' : '__'

" ======== autoformat ========
let g:formatdef_masm = '"asmfmt"'
let g:formatters_masm = ['masm']
noremap <F3> :Autoformat<CR>
autocmd filetype cs noremap <F3> :OmniSharpCodeFormat<CR>

" ======== omnisharp ========
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_mono = 1

" ======== suda ========
let g:suda#prefix = ['suda://', 'sudo://', '_://']

" ====== asm ========
let g:asmsyntax = 'masm'
