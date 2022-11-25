"ENVIRONMENT
"文字関係の設定
let $LANG='UTF-8,ja_JP'

"ファイルを開くときの文字コードのリスト。一致しない、判別できない場合、文字化けする。
"（その際、:set fenc? でlatin1となる。）
"set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932
"set fileencodings=utf-8,sjis,cp932
set fileencodings=utf-8
"ファイル
set encoding=utf-8
"ファイルを引数で保存する
set fileencodings=utf-8
"shellコマンドの文字化けを防ぐ
"set termencoding=cp932


"Keep the current directory and the browsing directory synced. 
let g:netrw_keepdir = 0

let g:netrw_liststyle = 2
" deletes netrw's buffer once it's hidden
autocmd FileType netrw setl bufhidden=delete
"fuzzy search
set nocompatible "limit search to your project
set path+=** "Search All subdirectories and recursively
"wildmenu
set wildmenu
set wildmode=longest:full,full


"clipboard option causes error https://stackoverflow.com/questions/70176024/how-to-efficiently-yank-to-system-clipboard-in-wsl2-neovim
"set clipboard=unnamedplus

"cuiのnvimで行崩れが起こるのでwindow幅設定
"set lines=24 columns=84

"cmdlineの高さ
set cmdheight=2

"tabの数の設定
set tabstop=4
set shiftwidth=4

"3行残して改行、1行左に空ける
set scrolloff=1
set foldcolumn=1
"line number
:set nu
"一番下（上）に付く前に早めにスクロールする。
set scrolljump=4
set scrolloff=6



"MAPPING 
"jj 
imap jj <Esc>
"leader key を \ から , へ変える
let mapleader = ','


"Map autocomplete C-x C-f as <tab>
"inoremap <tab> <c-x><c-f>	
"Map F3 to toggle on and off the line numbers in Normal mode
nmap <F3> :set nu! <CR>
"Map <leader>F3 to toggle on and off the Relative line numbers in Normal mode
nmap <leader><F3> :set rnu! <CR>
"Map F3 to toggle on and off the line numbers in Insert mode
imap <F3> <ESC>:set nu! <CR>i
"Map F4 to toggle on and off the Relative line numbers in Insert mode
imap <F4> <ESC>:set rnu! <CR>i

":term から抜けてウィンドウ移動
tmap <Esc> <C-\><C-n>
"if has('nvim')
"	tnoremap <C-l> <C-\><C-n>
"endif

"その他未分類
syntax on
set laststatus=2
set t_Co=256
"set wrap
"set number
set hlsearch
set incsearch
"set smartcase
set ignorecase
"disable bell
set novisualbell
set vb t_vb=

set mouse-=a
" Disable annoying beeping
set noerrorbells
set belloff=all

" clipboard
set clipboard^=unnamed,unnamedplus
"set clipboard+=unnamed,unnamedplus
set autochdir
let g:mkdp_markdown_css='/home/infoh/markdown.css'
let g:mkdp_theme='light'

"PLUGINS
"For emmet
let g:user_emmet_expandabbr_key='<tab>'
let g:user_emmet_settings = {
\  'variables' : {
\    'lang': "ja",
\    'charset': "utf-8",
\    'child': "Document",
\  },
\  'html' : {
\    'indentation' : '  ',
\    'snippets' : {
\      'html:5': "<!DOCTYPE html>\n"
\        ."<html lang=\"${lang}\">\n"
\        ."<head>\n"
\        ."\t<meta charset=\"${charset}\">\n"
\        ."\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n"
\        ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
\        ."\t<title></title>\n"
\        ."</head>\n"
\        ."<body>\n\t${child}|\n</body>\n"
\        ."</html>"
\    }
\  }
\}

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'NLKNguyen/papercolor-theme'
Plug 'junegunn/vim-easy-align'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim',{'for':'html'}
call plug#end()

"abbr space key to use abbr
abbr mymail info.hh1216@gmail.com
"colorscheme dracula
set background=light
colorscheme PaperColor
let g:mkdp_markdown_css='/root/markdown.css'
let g:mkdp_theme='light'

