
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vim-powerline ステータスライン
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"ファイル名、ファイル系文字コード 行番号

"==========================================================

"vim-powerlineでステータスラインをかっこよくする - 馬鹿と天才は紙一重
"  http://d.hatena.ne.jp/shim0mura/20120423/1335197161

"端末から
" sudo apt-get install fontforge
" cd ~/.fonts
" cp Ricty-Regular.ttf ../.vim/bundle/vim-powerline/fontpatcher
" cp Ricty-Bold.ttf ../.vim/bundle/vim-powerline/fontpatcher
" cd ../.vim/bundle/vim-powerline/fontpatcher
" fontforge -lang=py -script fontpatcher Ricty-Regular.ttf
" fontforge -lang=py -script fontpatcher Ricty-Bold.ttf
" cp Ricty-Regular-Powerline.ttf ~/.fonts
" cp Ricty-Bold-Powerline.ttf ~/.fonts

"ステータス行を表示
set laststatus=2

let g:Powerline_symbols = 'fancy'
let g:Powerline_symbols = 'unicode'



"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimの設定 ステータスライン
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""ステータス行の指定
"fugitiveを利用できる場合。
" set statusline=%f%<%m%r%h%w\ %y%<%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%=%<<%l/%L>,[%c%V]%6P\ %{fugitive#statusline()}\

"fugitiveを利用できない場合。
"set statusline=%y%<%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%f%m%r%h%w%=<%l,%c%V>%6p%%

"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

"設定例
""ステータス行の指定
"左端1	ファイル名
"set statusline=%m%<%f\ %h%r
"左端2	GITレポジトリ
"set statusline+=%{fugitive#statusline()}\
"左端4	ファイルタイプ
"set statusline+=%y
"左端5	ステータス行に文字コードと改行コード表示
"set statusline+=%<%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}

"右端 行数、カーソル位置
"set statusline+=%=<%l/%L>,[%c%V]%6P

"set statusline=  	設定
"set statusline+=		追加設定

"\  - \とスペースでスペースを置ける。
"%< - 行が長すぎるときに切り詰める位置
"%f - ファイル名（相対パス）
"%F - ファイル名（絶対パス）
"%t - ファイル名（パス無し)
"%y - ファイルタイプ

"%m - 修正フラグ （[+]または[-]）
"%r - 読み込み専用フラグ（[RO]）
"%h - ヘルプバッファ
"%w - preview window flag

"%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'} - fileencodingとfileformatを表示

"%= - 左寄せと右寄せ項目の区切り（続くアイテムを右寄せにする）
"%l - 現在のカーソルの行番号
"%L - 総行数
"%c - column番号
"%V - カラム番号



""""""""""""""""""""""""""""""
"挿入モード時、ステータスラインの色を変更
""""""""""""""""""""""""""""""
" let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

" if has('syntax')
"   augroup InsertHook
"     autocmd!
"     autocmd InsertEnter * call s:StatusLine('Enter')
"     autocmd InsertLeave * call s:StatusLine('Leave')
"   augroup END
" endif

" let s:slhlcmd = ''
" function! s:StatusLine(mode)
"   if a:mode == 'Enter'
"     silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
"     silent exec g:hi_insert
"   else
"     highlight clear StatusLine
"     silent exec s:slhlcmd
"     redraw
"   endif
" endfunction
" 
" function! s:GetHighlight(hi)
"   redir => hl
"   exec 'highlight '.a:hi
"   redir END
"   let hl = substitute(hl, '[\r\n]', '', 'g')
"   let hl = substitute(hl, 'xxx', '', '')
"   return hl
" endfunction



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 色 カラー
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" " 日本語入力ON時のカーソルの色を設定
" if has('multi_byte_ime') || has('xim')
" 	highlight CursorIM guibg=Purple guifg=NONE
" endif
" 
" " カーソル行をハイライト
" set cursorline
" 
"   " カレントウィンドウにのみ罫線を引く
" augroup cch
"   autocmd! cch
"   autocmd WinLeave * set nocursorline
"   autocmd WinEnter,BufRead * set cursorline
" augroup END
" 
" :highlight clear CursorLine
" 
" :highlight CursorLine gui=underline guibg=black
" :highlight CursorLine ctermbg=Black

"==========================================================

":highlight CursorLine cterm=underline
":highlight CursorLine ctermfg=none

":highlight Normal ctermfg=grey
"highlight Normal ctermbg=Black
":highlight StatusLine term=none cterm=none ctermfg=black ctermbg=grey

" DarkRed
" DarkGreen
" DarkBlue
" DarkCyan
" DarkMagenta
" DarkYellow
" White
" Black



