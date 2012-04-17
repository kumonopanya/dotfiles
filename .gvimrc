



"文字化けする。
":set guifont=Inconsolata:h14


"Win
":set guifont=Ricty 18
"Unix
:set guifont=Ricty\ 18
"Mac
":set guifont=Ricty:h18





" userautoloadディレクトリ
" ※３
" このディレクトリ内の設定ファイルを最後に読み込ませるために_gvimrcに書く。
" 
" 分割した設定ファイルをuserautoloadに置き、
" このコマンドでフォルダに入れたすべての設定ファイルが自動的に読み込まれる。
:runtime! userautoload/*.vim



" $HOME\userautoload\
" 読み込みの条件はファイル名の拡張子を「*.vim」にする。
" 例
" color.vim
" savevers.vim


" 構文強調
" これもここに書かないと上書きされる。
syntax enable

" コマンド":syntax enable"は現在の色設定を変更しない。
" そのため、このコマンドを使用する前後にコマンド":highlight"で
" 好みの色を設定することができる。
" 現在の設定を破棄して、デフォルトの色を設定させたい場合は次のコマンドを使用する
" syntax on

" 他に、フォント設定、キーマッピング等を行う。


set textwidth=78
set columns=100
set lines=150

"特殊文字(SpecialKey)の見える化。listcharsはlcsでも設定可能。
"trailは行末スペース。
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<

" 全角スペースを視覚化
"highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=#666666
"au BufNewFile,BufRead * match ZenkakuSpace /　/




