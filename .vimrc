"ENVIRONMENT========================================
"文字関係の設定
let $LANG='UTF-8,ja_JP'

"ファイルを開くときの文字コードのリスト。一致しない、判別できない場合、文字化けする。
"（その際、:set fenc? でlatin1となる。）
"set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932
"set fileencodings=utf-8,sjis,cp932
"ファイル
set encoding=utf-8
"ファイルを引数で保存する
set fileencodings=utf-8,sjis
"shellコマンドの文字化けを防ぐ
"set termencoding=cp932
"Keep the current directory and the browsing directory synced. 
"control charcter
"trail：行末のスペースを表示
set listchars=tab:»-,trail:-,nbsp:%,eol:↲
"foldを使う
set foldenable
"貼り付け用
"set paste
"Ex
let g:netrw_keepdir = 0
let g:netrw_liststyle = 2
"fuzzy search
set nocompatible "limit search to your project
set path+=** "Search All subdirectories and recursively
"wildmenu
set wildmenu
set wildmode=longest:full,full
"clipboard option causes error https://stackoverflow.com/questions/70176024/how-to-efficiently-yank-to-system-clipboard-in-wsl2-neovim
"cuiのnvimで行崩れが起こるのでwindow幅設定
"set lines=24 columns=84
"cmdlineの高さ
set cmdheight=1
"tabの数の設定
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
"3行残して改行、1行左に空ける
"set scrolloff=1
"set foldcolumn=1
"line number
:set nu
"一番下（上）に付く前に早めにスクロールする。
set scrolljump=4
set scrolloff=6
"split at right pane
set splitright

"MAPPING================================================= 
"ENV MAP=================================================
"LEADER
"<leader> keyを,にする
let mapleader = '@'
"<localleader> keyを\\にする
let maplocalleader = '\\'
"Quick VIMRC
nnoremap <leader>ev :vsplit /root/.vimrc<cr>
nnoremap <leader>sv :source /root/.vimrc<cr>
"Quick MyJournal
nnoremap <leader>ej :vsplit /mnt/h/マイドライブ/G_Private/journal.md<cr>
"Quick MyDict
nnoremap <leader>ee :vsplit /mnt/h/マイドライブ/G_Private/eng.md<cr><Esc>
"Quick Myterms
nnoremap <leader>et :vsplit /mnt/h/マイドライブ/G_Private/terms.md<cr>
"Quick MyGit_note
nnoremap <leader>eg :e /mnt/h/マイドライブ/G_Webdev/Documents/Learn_Git.md<cr>
"Quick MyDocker_note
nnoremap <leader>ed :e /mnt/h/マイドライブ/G_Webdev/G_Docker/Docker_terms.md<cr>

"EDIT MAP=================================================
"Join selected lines then delete a space
"日本語用
vnoremap <S-j> J :s/\s//g<cr><esc>
"アルファベット用
vnoremap <c-j> J<esc> 
"g <C-a> increment numbers
vnoremap g<c-f> g<c-a> 
"dd with <c-s>
nnoremap <c-s> dd
"insert newline
nnoremap <S-o> i<cr><esc><S-o><esc>
"全角スペースの検索 （動かない。C-spaceはマッピングできない？
"nnoremap f<S-space> f<C-space><space>
"nore in inoremap or nnoremap means non recursive. this makes mappings avoid confilct with other custom ( or plugins )mappings.
"
"<CR> means 'Carrige Return'
"1.mapping for insert mode
"ctrl+d for 'go in normal mode and delete whole line with dd, then back to
"insert mode"
inoremap <c-d> <esc>ddi
"2.mapping for insert mode
"make text uppercase
"viw mean into visual and select a word
"$i mean move cursor to end and back to insert mode
inoremap <c-u> <esc>viwU$i 
"same mapping but in normal mode
nnoremap <c-u> viwUe
"replace <S-a> to <C-a>
nnoremap <C-a> <S-a>
"jk for <esc>
inoremap jk <esc>
inoremap <esc> <nop>
"line number toggle
"Map F3 to toggle on and off the line numbers in Normal mode
nnoremap <F3> :set nu! <CR>
"Map <leader>t to input current time
nnoremap <leader>t :put =strftime('%Y/%m/%d(%a)')
"Map <leader>F3 to toggle on and off the Relative line numbers in Normal mode
nnoremap <leader><F3> :set rnu! <CR>
"Map F3 to toggle on and off the line numbers in Insert mode
inoremap <F3> <esc>:set nu! <CR>i
"Map F4 to toggle on and off the Relative line numbers in Insert mode
inoremap <F4> <esc>:set rnu! <CR>i
"Surround
"quote with "
"by word
nnoremap <leader>" viw<esc>bi"<esc>ea"<esc>l
nnoremap <leader>' viw<esc>bi'<esc>ea'<esc>l
"by clause
nnoremap <leader>c" _vg_<esc>`<<esc>i"<esc>`>ea"<esc>l
nnoremap <leader>c" _vg_<esc>`<<esc>i"<esc>`>ea"<esc>l
nnoremap <leader>c[ _vg_<esc>`<<esc>i[<esc>`>ea]<esc>l
nnoremap <leader>c( _vg_<esc>`<<esc>i(<esc>`>ea)<esc>l
vnoremap <leader>v" <esc>`<<esc>i"<esc>`>ea"<esc>l
vnoremap <leader>v' <esc>`<<esc>i'<esc>`>ea'<esc>l
vnoremap <leader>v[ <esc>`<<esc>i[<esc>`>ea]<esc>l
vnoremap <leader>v( <esc>`<<esc>i(<esc>`>ea)<esc>l

"H,L as strong h,l
nnoremap H 0
nnoremap L $
":term から抜けてウィンドウ移動
tnoremap <esc> <C-\><C-n>
"AUTOCMD================================================= 
"deletes netrw's buffer once it's hidden
autocmd FileType netrw setl bufhidden=delete
autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>
"insert datetime when open freenote

"COLOR====================================================
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

"ABBR
"Anchor and Reference
abbr tick ```
abbr todo - [ ]
abbr anchor [^n]
abbr refer [^n]:<cr>
abbr term ### :<cr>
abbr word ### :<cr>
abbr pds - Plan:<cr>
\- Do:<cr>
\- See:<cr>
abbr timestamp 00:00

abbr m_mermaid ```mermaid<cr>
\flowchart LR;<cr>
\<cr>
\就活 --> Coding<cr>
\<cr>
\subgraph ポートフォーリオ<cr>
\Coding-->Sassの教科書-->Portfolio<cr>
\end<cr>
\<cr>
\subgraph 汎用知識<cr>
\Git-->Get_vim_colortheme<cr>
\Git-->Sync_vimrc<cr>
\end<cr>
\<cr>
\Get_vim_colortheme-->アプリ-->Portfolio<cr>
\Sync_vimrc-->アプリ<cr>
\```
"FOLDING 
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview
autocmd BufWinLeave *.* mkview!
autocmd BufWinEnter *.* silent loadview

"COLORSCHEME
"colorscheme dracula
colorscheme PaperColor
set background=light

"MARKDOWN
let g:mkdp_markdown_css='/root/markdown.css'
let g:mkdp_theme='light'
let vim_markdown_preview_github=1  

