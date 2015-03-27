" ----- Display -----
" 行番号とルーラーを表示する
set number
set ruler

" シンタックスハイライトを有効にする
syntax on

" カラースキームを設定する
colorscheme railscasts



" ----- Operation -----
" 左右カーソルキーで前後の行末行頭に移動できるようにする
set whichwrap=b,s,<,>,[,]

" カーソル位置を復元
autocmd BufReadPost * if line("'\"") > 0 && line ("'\"") <= line("$") | exe "normal! g'\"" | endif

" インデント・行頭の削除、編集モードでの削除を可能にする
set backspace=start,eol,indent


" ----- Format -----
" 自動インデントを有効化する
"set smartindent
"set autoindent



" ----- Search -----
" インクリメンタルサーチを有効にする
set incsearch

" 大文字小文字を区別しない
set ignorecase

" 大文字で検索されたら対象を大文字限定にする
set smartcase

" 行末まで検索したら行頭に戻る
set wrapscan
