"syntax
syntax on

"----------------------------------------------------
""Emacs
"----------------------------------------------------
" 移動
"imap <C-a>  <Home>
"imap <C-e>  <End>
"imap <C-b>  <Left>
"imap <C-f>  <Right>
"imap <C-n>  <Down>
"imap <C-p>  <UP>
"imap <ESC>< <ESC>ggi
"imap <ESC>> <ESC>Gi
map! <C-a> <Home>
map! <C-e> <End>
"nnoremap ; :
"nnoremap : ;
inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap () ()<LEFT>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
inoremap <> <><LEFT>
inoremap []5 [%  %]<LEFT><LEFT><LEFT>
inoremap {}5 {%  %}<LEFT><LEFT><LEFT>
inoremap <<>> <%  %><LEFT><LEFT><LEFT><LEFT> 
inoremap jj <Esc>
"----------------------------------------------------
"" GNU GLOBAL(gtags)
"----------------------------------------------------
"nmap <C-q> <C-w><C-w><C-w>q
"nmap <C-g> :Gtags -g
"nmap <C-l> :Gtags -f %<CR>
"nmap <C-j> :Gtags <C-r><C-w><CR>
"nmap <C-k> :Gtags -r <C-r><C-w><CR>
"nmap <C-n> :cn<CR>
"nmap <C-p> :cp<CR>

"buffers
"直前に開いたファイルへ戻る
map <C-b> :bp<CR>
"直後に開いたファイルへ戻る
map <C-f> :bn<CR>

"gtags
"関数の定義箇所を探す
map <C-g> :Gtags -g
"ファイル中で定義されている関数一覧表示
map <C-i> :Gtags -f %<CR>
"関数参照している箇所を一覧表示
map <C-l> :Gtags -r
"定義箇所-参照箇所を移動
map <C-j> :GtagsCursor<CR>
"検索項目の上方向へ移動＆表示
map <C-h> :cp<CR>
"検索項目の下方向へ移動＆表示
map <C-n> :cn<CR>
"検索項目の下方向へ移動＆表示
map <C-p> :cp<CR>

highlight LineNr ctermfg=darkyellow    " 行番号
highlight NonText ctermfg=darkgrey
highlight Folded ctermfg=blue
highlight SpecialKey cterm=underline ctermfg=darkgrey
"highlight SpecialKey ctermfg=grey " 特殊記号

" 全角スペースを視覚化
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white
match ZenkakuSpace /　/

" タブ幅
set ts=2 sw=2
set softtabstop=2
set expandtab


" -------------------
" 検索
" -------------------
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する(noignorecase)
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する(nosmartcase)
set smartcase
" 検索文字のハイライトをしない
set hlsearch
" インクリメンタルサーチ
set incsearch

if v:version < 700
   set migemo
endif

set history=5000
set wildmenu 
set nocompatible
filetype on
filetype indent on
filetype plugin on


"Rubyのオムニ補完を設定(ft-ruby-omni)
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

"do end $ match
source $VIMRUNTIME/macros/matchit.vim

"add pathigen
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

"Explore Tips
"<Enter>   カーソル下のファイルを開く、ディレクトリに移動する
"o         カーソル下のファイル、ディレクトリを別のウィンドウで開く
"p         カーソル下のファイル、ディレクトリをプレビューウィンドウで開く
"x         カーソル下のファイルを関連付けられたアプリケーションで開く
"s         ファイルの並び順を変更する(押すたびに、ファイル名、サイズ、日付が切替る)
"r         ファイルの並び順を逆にする
"i         ファイルの詳細情報を表示する
"-         一つ上のディレクトリに移動する
"?         ヘルプを表示する
