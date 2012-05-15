


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" キーカスタマイズ 基本
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"英語キーボードで必須、ライフチェンジ。
" ;でコマンド入力( ;と:を入れ替)
noremap ; :
"noremap : ;

"<Leader><Leader>で変更があれば保存
noremap zz :up<CR>

"カーソル下のヘルプ
nnoremap H; :<C-u>help<Space><C-r><C-w><CR>

" Don't use Ex mode, use Q for formatting
map Q gq

"ビジュアルモード時vで行末まで選択
vnoremap v $h

" Ctrl+Nでコマンドライン履歴を一つ進む(前方一致)
cnoremap <C-P> <UP>
" Ctrl+Pでコマンドライン履歴を一つ戻る(前方一致)
cnoremap <C-N> <DOWN>

" 全選択
nnoremap <Leader>a ggVG

" Visually select the text that was last edited/pasted
nmap gV `[v`]

"ノーマルモードでもエンターキーで改行を挿入
noremap <CR> o<ESC>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim: <LocalLeader>の設定 - while ("im automaton");
"  http://whileimautomaton.net/2007/04/19221500

"mapleaderマニュアル
":help mapleader

":let mapleader = ","
":let maplocalleader=","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"コンマの後に自動的にスペースを挿入
inoremap , ,<Space>
"inoremap <Space> <C-r>=strpart(getline("."),col(".")-3,2)==", "?"":" "<CR>

" vimヘルプ Ctrl-i
nnoremap <C-i> :<C-u>help<Space>
" カーソル下のキーワードをヘルプでひく
nnoremap <C-i><C-i> :<C-u>help<Space><C-r><C-w><Enter>
"他の候補u

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim-users.jp
"  http://vim-users.jp/
"Hack #122: 行末までヤンクする

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
" Yの動作をDやCと同じにする
"D	カーソル位置から行末まで削除(デフォルトで設定済み)
"C	カーソル位置から行末まで削除＆挿入モード(デフォルトで設定済み)
"Y	カーソル位置から行末までヤンク
nnoremap Y y$

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" キーカスタマイズ ファンクションキー
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vimの使い方－Tips
"  http://www15.ocn.ne.jp/~tusr/vim/vim_text2.html

"map  ノーマル  ビジュアル 演算待ち
"map! 挿入 コマンドライン
"nmap ノーマル
"vmap ビジュアル
"omap 演算待ち
"imap 挿入
"cmap コマンドライン
"lmap ランゲージ

"明確に範囲指定が必要なケース以外では、
"範囲指定の影響をキャンセルするために<C-u>を含める必要があります。

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" HHKでの有効なファンクションキー
" <S-F5>
" <S-F6>
" <S-F7>
" <S-F8>
" <S-F9>
" <S-F11>
" <S-F12>

" <M-F11>
" <M-F12>

" <C-F5>
" <C-F6>
" <C-F7>
" <C-F8>
" <C-F9>
" <C-F10>
" <C-F11>
" <C-F12>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"tab <F1> 新規タブの作成
"tab <F2> 一つ前のタブへ
"tab <F3> 次のタブへ
"tab <F4> タブを閉じる(最後のタブページは閉じられない)

	map <silent> <F1> <Esc>:tabnew<CR>:tabmove<CR>
	map <silent> <F2> <Esc>:tabprevious<CR>
	map <silent> <F3> <Esc>:tabnext<CR>
	map <silent> <F4> <Esc>:tabc<CR>

" タブ移動
"gt 右のタブへ
"gT 左のタブへ
noremap gh gT
noremap gl gt

"tab <S-F5> 一つ前のバッファへ
"tab <S-F6> 次のバッファへ
"map <silent> <Space>f <C-u>:bp<CR>
"map <silent> <Space>d <C-u>:bn<CR>
"map <silent> fd :bp<CR>
"map <silent> df :bn<CR>
"map <silent> fd :bp<CR>
map <silent> tt :bn<CR>

"<F5>
	"Rubyscript用
	"QuickFix
	"<F5>でRubyスクリプト
	"保存後シンタックスチェックし、エラーをQuickFixに表示

	"syntax ok なら E42エラーはありませんと表示
	"エラーがあった場合表示＆カーソル移動してくれる。
	"Rubyのシンタックスチェック
	"silent! nmap <unique> <C-F5>   :w<CR>:make -c %<CR>:cw<CR>:cfirst<CR>zz
"  nmap <silent> <S-F5>   :w<CR>:make -c %<CR>:cw<CR>:cfirst<CR>zz

	"文法を厳しくチェック
	"初期化されていない変数などを見つける。
	"すべての警告を出力する。
"	nnoremap <silent> <S-F5> :w<CR>:!ruby -W %<CR>
"-w:数字が大きいほど細かく警告が出る。-W0は警告なし
"	nnoremap <silent> <S-F5> :w<CR>:!ruby -W0 %<CR>
"	nnoremap <silent> <S-F5> :w<CR>:!ruby -W1 %<CR>
"	nnoremap <silent> <S-F5> :w<CR>:!ruby -W2 %<CR>

"タグ用
"トグル
nnoremap <silent> <F5> :<C-u>TlistToggle<CR>
nnoremap <silent> <S-F5> :<C-u>SrcExplToggle<CR>
nmap <F6> :TagbarToggle<CR>



"<F6>
"vim-flake8
	"autocmd FileType python map <buffer> <F6> :call Flake8()<CR>

"<S-F5>
"<S-F6>


"<F7>
	"savevers.vim
	"<F7>でひとつ前のバックアップと比較
	nmap <silent> <F7> :VersDiff -<CR>

	"<Leader>vqでVersDiffから抜ける
	nmap <silent> <S-F7> :VersDiff -c<CR>



"<F8>
	"<F8>でひとつ後のバックアップと比較
	nmap <silent> <F8> :VersDiff +<CR>

	"<Leader>vqでVersDiffから抜ける
	nmap <silent> <S-F8> :VersDiff -c<CR>



"<F9>
	"<F9>正確に貼りつける。
	"貼りつけたあとは改行を一回入れる。
	nmap <silent> <F9> :a!<CR>



"<F10>
	"☓Ubuntu
	"全てのウィンドウサイズを同じにする
	"nmap <silent> <S-F10> <Esc><C-w>=

 	"最大の幅にする。
	"上下に分割されているウィンドウを広げる。
	nmap <silent> <M-F10> <Esc><C-w>7+

	"nmap <silent> <F6> <Esc><C-w> >
	"nmap <silent> <M-F6> <Esc><C-w> <
	"nmap <silent> <C-F6> <Esc><C-w> |

	" Use <F10> to toggle between 'paste' and 'nopaste'
	" <F10>キーで'paste'と'nopaste'を切り替える
	"set pastetoggle=<F10>



"<F11>	
	"インデントを行う。
	nmap <silent> <F11> <C-u>gg=G

"nmap <F11> :Ref webdict<space>
"nmap <S-F11> :Ref webdict wiktionary<space>

	"○.vimrcファイルの再読み込み。
	"nmap <F11> <Esc>:source ~/.vimrc<CR>
"	nmap <F11> <Esc>:source $VIM/_vimrc<CR>

"設定ファイルテスト用

	nmap <Leader><Leader> <Esc>:source ~/.vimrc<CR>
"	nmap <Leader><Leader> <Esc>:source $HOME/_gvimrc<CR>

" "\"は割り当て無し、元のまま、","へ割り当てただけだから


"<F12>
	"全ファイル保存せず強制終了。
	nmap <silent> <F12>       <Esc>:qall!<CR>
	vmap <silent> <F12>       <Esc>:qall!<CR>
	omap <silent> <F12>       <Esc>:qall!<CR>
	imap <silent> <F12>       <Esc>:qall!<CR>
	cmap <silent> <F12> <C-u>:<Esc>:qall!<CR>



	"現在のファイルを再読み込み。(変更を破棄して再読み込み。)
	"カラー修飾されなかったときや、コマンドが効かなくなった時に
	nmap <silent> <S-F12> <Esc>:e!<CR>







""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" キーカスタマイズ 移動キー
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"inoremap で挿入モード限定。
"通常モードでの特徴的な hjkl（←↓↑→）移動を挿入モードでも使えるようにしたもの。
"<Home>とか<End>なんかはオマケですが、割と重宝してます。
"<Home>だけ Ctrl キーじゃないのは、C-a が Linux の Screen と競合するから。

"インサートモードで行のカーソル移動
"inoremap <leader>h <Home>
"inoremap <leader>l <End>
inoremap <C-a> <Home>
inoremap <C-e> <End>

"挿入モード時のインデントキーとかぶっているため使用しない。
inoremap <C-d> <Del>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Escの2回押しでハイライト消去
nmap <silent> <ESC><ESC> :nohlsearch<CR><ESC>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"C-j で esc
"ESC キーをCtrl+[で代用する。最多利用なのでキーマップした。
inoremap <C-j> <ESC>:nohlsearch<CR>
vnoremap <C-j> <ESC>
"inoremap <C-m> <ESC>
"vnoremap <C-m> <ESC>
" 行ごとに挿入モードから編集モードに戻ってしまうのでコメントアウト


"検索のハイライトを消す。
":nohlsearch<CR><ESC>


"インサートモードでの移動
"C-jはescを割り当てるのでコメントアウト
"C-kはヘルプを割り当てるのでコメントアウト
"""inoremap <C-h> <Left>
"""inoremap <C-j> <Down>
"""inoremap <C-k> <Up>
inoremap <C-l> <Right>

"スニペットウィンドウが開いたら焦らずカーソル移動でウィンドウを閉じるように動く。

"<C-m>をいじるとCRキーが変な挙動に。
"""inoremap <C-m> <Down>
"imap <C-m> <Down>
"挿入解除されてしまう。
"inoremap <C-CR> <Down>
"inoremap <C-Space> <Down>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"カーソルの上下移動が、補完候補上に来たときのキー操作とかぶるので
"通常の挿入モードのカーソル移動はカーソルキーで操作する。

"キル＆ヤンク
inoremap <Leader>k <ESC>d$i
inoremap <Leader>p <ESC>pi














""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" キーカスタマイズ 括弧
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim-users.jp - Hack #214: 括弧までを消したり置き換えたりする
"  http://vim-users.jp/2011/04/hack214/

onoremap ) t)
onoremap ( t(
vnoremap ) t)
vnoremap ( t(


"括弧など引用符をセットで入力すと、自動的に、一つ左に戻る。
"括弧など引用符をセットで入力すと、自動的に、一つ左に戻る。
"括弧など引用符をセットで入力すと、自動的に、一つ左に戻る。

"左右括弧を入力して、中央にカーソル移動
inoremap {} {}<LEFT>
"inoremap [] []<LEFT>
"inoremap () ()<LEFT>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
inoremap <> <><LEFT>
"inoremap || ||<LEFT> "エラーが出る

"autoclose.vim
"autoclose.vim
"autoclose.vim


"左括弧だけ入力して、右括弧補完+中央にカーソル移動
"inoremap { {}<LEFT>
inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
"inoremap < <><LEFT>
"inoremap | ||<LEFT> "エラーが出る



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" キーカスタマイズ カーソルキー
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"同じ画面内の分割ウィンドウへ移動

"nmap <silent> <LEFT>  <Esc><C-w>h
"nmap <silent> <DOWN>  <Esc><C-w>j
"nmap <silent> <UP>    <Esc><C-w>k
"nmap <silent> <RIGHT> <Esc><C-w>l

" change window size
"{{{
nnoremap <silent> <Up>    :2 wincmd -<CR>
nnoremap <silent> <Down>  :2 wincmd +<CR>
nnoremap <silent> <Left>  :7 wincmd <<CR>
nnoremap <silent> <Right> :7 wincmd ><CR>
"}}}

nnoremap <silent> <C-h> <Esc><C-w>h
nnoremap <silent> <C-j> <Esc><C-w>j :nohlsearch<CR>
nnoremap <silent> <C-k> <Esc><C-w>k
nnoremap <silent> <C-l> <Esc><C-w>l



" window movement
"{{{
"for key in ['h', 'j', 'k', 'l']
"  execute 'nnoremap <silent> <C-' . key . '> :wincmd' key . '<CR>'
"endfor
"}}}




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim-users.jp - Hack #159: オプションの値を気にせずsplit, vsplitする
"  http://vim-users.jp/2010/07/hack159/

nmap weh <SID>(split-to-h)
nmap wej <SID>(split-to-j)
nmap wek <SID>(split-to-k)
nmap wel <SID>(split-to-l)

nnoremap <SID>(split-to-h) :<C-u>execute 'topleft'    (v:count == 0 ? '' : v:count) 'vsplit'<CR>
nnoremap <SID>(split-to-j) :<C-u>execute 'belowright' (v:count == 0 ? '' : v:count) 'split'<CR>
nnoremap <SID>(split-to-k) :<C-u>execute 'aboveleft'  (v:count == 0 ? '' : v:count) 'split'<CR>
nnoremap <SID>(split-to-l) :<C-u>execute 'botright'   (v:count == 0 ? '' : v:count) 'vsplit'<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"矢印キーでの移動を禁止する: RemovableType
"  http://rt.air-nifty.com/blog/2008/08/post_d08e.html

"矢印キーでの移動を禁止する

"mapは
	"ノーマル
	"ビジュアル
	"オペレータ保留モード
"map!は
	"インサート
	"コマンドモード
"でのキーマッピングを指定する。

"map  <LEFT>  <ESC>
"map! <LEFT>  <ESC>

"map  <DOWN>  <ESC>
"map! <DOWN>  <ESC>

"map  <UP>    <ESC>
"map! <UP>    <ESC>

"map  <RIGHT> <ESC>
"map! <RIGHT> <ESC>




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ウィンドウ分割キー操作
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"横分割
	":split
	":sp
	"Ctrl-w s

"縦分割
	":vsplit
	":vs
	"Ctrl-w v

"すべてのファイルをウィンドウで開く
	":ball
	":ba

"Ctrl-w [wW]	カーソルをウィンドウ間で次々と移動
"Ctrl-w [hjklp]	カーソルをウィンドウ間で移動。
"Ctrl-w [tb]	カーソルを一番上（下）のウィンドウに移動

"Ctrl-w p

":only			カーソルがあるウィンドウのみにする
"Ctrl-w o

":close			カーソルがあるウィンドウを閉じる
"Ctrl-w c

"Ctrl-w q		カーソルがあるウィンドウを終了する？

":new			横分割して新規バッファを作成
"Ctrl-w n

":vnew			縦分割して新規バッファを作成

"Ctrl-w [HJKL]	ウィンドウそのものを移動
"Ctrl-w [rR]	ウィンドウをスワップ
"Ctrl-w [+-]	ウィンドウの高さを変更
"Ctrl-w _
"Ctrl-w =		全てのウィンドウサイズを同じにする

"nnoremap <silent> wq <Esc><C-w>=
"nnoremap <silent> ww <Esc><C-w><C-w>

"w1 :only<CR>	画面を一つにする(変更があると無効となる)
"w2 :sp<CR>		画面を上下に分ける(同じファイル)
"w3 :vsp<CR>	  画面を左右に分ける(同じファイル)
"w4 :new<CR>	  画面を上下に分割する(新しいバッファを作成)
"w5 :vnew<CR>	画面を左右に分割する(新しいバッファを作成)
"w6 :vsp<CR>	  画面を左右に分割する(同じファイル)

"nnoremap <silent> w1 :only<CR>
"nnoremap <silent> w2 :sp<CR>
"nnoremap <silent> w3 :vsp<CR>
"nnoremap <silent> w4 :new<CR>
"nnoremap <silent> w5 :vnew<CR>
"nnoremap <silent> w6 :vsp<CR>
"nnoremap <silent> w7 <Esc><C-w>|
"nnoremap <silent> w8 <Esc><C-w>_
"nnoremap <silent> w7 <Esc><C-w>30<
"nnoremap <silent> w8 <Esc><C-w>30-
"nnoremap <silent> w9 <Esc><C-w>30+
"nnoremap <silent> w0 <Esc><C-w>30>
"nnoremap <silent> w7 <Esc><C-w>|
"nnoremap <silent> w9 <Esc><C-w>_



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" キーカスタマイズ 日付キー
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"このマップはカーソルの位置に現在の日時を挿入します。
"<Leader> はデフォルトで\キー
inoremap <Leader>date <C-R>=strftime('%Y/%m/%d (%a)')<CR>
inoremap <Leader>time <C-R>=strftime('%H:%M')<CR>
inoremap <Leader>w3cd <C-R>=strftime('%Y-%m-%dT%H:%M:%S+09:00')<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" キーカスタマイズ クリップボード系
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" OSのクリップボードを使用する
"set clipboard+=unnamed
" ヤンクした文字は、システムのクリップボードに入れる"
"set clipboard=unnamed

"vimエディタからクリップボードを利用する。 名無しのvim使い
"  http://nanasi.jp/articles/howto/editing/clipboard.html

"ビジュアルモードで選択したテキストが、クリップボードに入るようにする。
"set clipboard+=autoselect

"無名レジスタに入るデータを、*レジスタにも入れる。
"set clipboard+=unnamed
"set clipboard=unnamedplus,unnamed


"カーソル上の言葉をclipboardへヤンク "{{{
"コマンド tt
"コマンド tt
"コマンド tt
function! s:yank_to_clipboard()
  if &clipboard =~# 'unnamed'
    normal! yiw
  else
    set clipboard +=unnamed
    normal! yiw
    set clipboard -=unnamed
  endif
endfunction
nmap tt :call <SID>yank_to_clipboard()<CR>
"}}}

" 単語境界に-を追加 {{{
"コマンド <Space>K

setlocal iskeyword +=-
function! s:toggle_is_key_word_hyphen() "{{{
  if &iskeyword =~# ',-'
    set iskeyword -=-
  else
    set iskeyword +=-
  endif
  echo &iskeyword
endfunction "}}}
command! ToggleIsKeyWordHyPhen  call s:toggle_is_key_word_hyphen()
nnoremap <Space>K :call <SID>toggle_is_key_word_hyphen()<CR>
"}}}

" clipboardにunnamedを追加 {{{
function! s:toggle_clipboard_unnamed() "{{{
  if &clipboard =~# 'unnamed'
    set clipboard -=unnamed
    echo 'clipboard mode OFF'
  else
    set clipboard +=unnamed
    echo 'clipboard mode ON'
  endif
endfunction "}}}
command! ToggleClipboardUnnamed call s:toggle_clipboard_unnamed()
nnoremap <Space>P :call <SID>toggle_clipboard_unnamed()<CR>
"}}}



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim上でもCtrl+C、Ctrl+Vが使えるようにする。
"選択部分をクリップボードにコピー
vmap <C-C> "*y

"挿入モード時、クリップボードから貼り付け
imap <C-V> <ESC>"*pa

"選択部分をクリップボードの値に置き換え
vmap <C-V> d"*P

"コマンドライン時、クリップボードから貼り付け
cmap <C-V> <C-R>*

" GUI版vimエディタで、この機能を有効にする
"set guioptions+=a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vim-surround
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"yss(custom_mapping) で実行。

let g:surround_custom_mapping = {}
let g:surround_custom_mapping._ = {
            \ 'p':  "<pre> \r </pre>",
            \ 'w':  "%w(\r)",
            \ 'j':  "$('\r')",
            \ 'J':  "$j('\r')",
            \ }
let g:surround_custom_mapping.help = {
            \ 'p':  "> \r <",
            \ }
let g:surround_custom_mapping.ruby = {
            \ '-':  "<% \r %>",
            \ '=':  "<%= \r %>",
            \ '9':  "(\r)",
            \ '5':  "%(\r)",
            \ '%':  "%(\r)",
            \ 'w':  "%w(\r)",
            \ '#':  "#{\r}",
            \ '3':  "#{\r}",
            \ 'e':  "begin \r end",
            \ 'E':  "<<EOS \r EOS",
            \ 'i':  "if \1if\1 \r end",
            \ 'u':  "unless \1unless\1 \r end",
            \ 'c':  "class \1class\1 \r end",
            \ 'm':  "module \1module\1 \r end",
            \ 'd':  "def \1def\1\2args\r..*\r(&)\2 \r end",
            \ 'p':  "\1method\1 do \2args\r..*\r|&| \2\r end",
            \ 'P':  "\1method\1 {\2args\r..*\r|&|\2 \r }",
            \ }
let g:surround_custom_mapping.eruby = {
            \ '-':  "<% \r %>",
            \ '=':  "<%= \r %>",
            \ '9':  "(\r)",
            \ '5':  "%(\r)",
            \ '%':  "%(\r)",
            \ 'w':  "%w(\r)",
            \ '#':  "#{\r}",
            \ '3':  "#{\r}",
            \ 'e':  "begin \r end",
            \ 'E':  "<<EOS \r EOS",
            \ 'i':  "if \1if\1 \r end",
            \ 'u':  "unless \1unless\1 \r end",
            \ 'c':  "class \1class\1 \r end",
            \ 'm':  "module \1module\1 \r end",
            \ 'd':  "def \1def\1\2args\r..*\r(&)\2 \r end",
            \ 'p':  "\1method\1 do \2args\r..*\r|&| \2\r end",
            \ 'P':  "\1method\1 {\2args\r..*\r|&|\2 \r }",
            \ }
let g:surround_custom_mapping.javascript = {
            \ 'f':  "function(){ \r }",
            \ }
let g:surround_custom_mapping.vim = {
            \'f':  "function! \r endfunction",
            \'z':  "\"{{{ \r \"}}}",
            \ }

"yss- で実行。

"見えない改行記号コードも囲ってしまう。
"改行コードを囲うと上下に挟まれる。
"\rを書いておかないと機能しない。
"""autocmd FileType eruby let b:surround_{char2nr("-")} = "<% \r %>"
"""autocmd FileType eruby let b:surround_{char2nr("=")} = "<%= \r %>"
"autocmd FileType html  let b:surround_{char2nr("E")} = "<% \r %>"
"autocmd FileType eruby let b:surround_{char2nr("-")} = "<%  %>"

"45 は 「-」の ASCII コード番号です。
"autocmd FileType html let b:surround_45 = "<% \r %>"
"autocmd FileType eruby let b:surround_45 = "<% \r %>"

"yssE で実行。
"autocmd FileType html let b:surround_{char2nr("E")} = "<<EOS \r EOS"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" smartchr.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"#one_of 一回だけ
"#loop   ループさせる

"共通
"inoremap <buffer> <expr> = smartchr#one_of('=', = ', ' == ', )
"inoremap <buffer> <expr> = smartchr#loop('=', ' = ', ' == ', )


"inoremap <buffer> <expr> = smartchr#loop(' = ', '=', ' => ', ' == ')
"inoremap <buffer> <expr> = smartchr#loop(' = ', ' == ', '=')
"inoremap <buffer> <expr> = smartchr#one_of(' = ', ' => ', ' == ', '=')

"inoremap <buffer> <expr> += smartchr#loop('+= ')
"inoremap <buffer> <expr> -= smartchr#loop('-= ')
"inoremap <buffer> <expr> .= smartchr#loop('.= ')
"inoremap <buffer> <expr> , smartchr#loop(', ', ',')

"inoremap <buffer> <expr> { smartchr#loop('{', '{{{')
"inoremap <buffer> <expr> } smartchr#loop('}', '}}}')

"inoremap <buffer> <expr> <S-=> smartchr#loop(' + ', '+')
"inoremap <buffer> <expr> - smartchr#loop('-', ' - ')
"inoremap <buffer> <expr> , smartchr#loop(', ', ',')
"inoremap <buffer> <expr> . smartchr#loop('.', '<%=  %>', '<%  %>')



"ファイルタイプ別
autocmd FileType python inoremap <buffer> <expr> = smartchr#one_of('=', ' = ', ' == ', '=')
"autocmd FileType python inoremap <buffer> <expr> = smartchr#loop(' = ', ' == ','=', )
"autocmd FileType eruby,jsp inoremap <buffer> <expr> % smartchr#loop('%=  %>', '% %>', '%- -%>')
autocmd FileType javascript inoremap <buffer> <expr> -> smartchr#one_of('function', '->')



"コマンドライン用
"Vim: smartchr - Insert several candidates with a single key
"  http://kana.github.com/config/vim/smartchr.html

" {context} is not specified - this is always enabled.
"cnoremap <expr> \  smartchr#loop('~/', '\')

" This is enabled while user inputs Ex commands, not search
" patterns, etc.
"cnoremap <expr> \  smartchr#loop('~/', '\', {'ctype': ':'})

" This is enabled while user inputs search patterns, not Ex
" commands, etc.
"cnoremap <expr> (  smartchr#loop('\(', '(', {'ctype': '/?'})




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" quickrun
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 出力先別にショートカットキーを設定する
" <Leader>w 単発
" <Leader>q 追加
" <space><space> 単発
for [key, com] in items({
\   '<Leader>w' : '>buffer',
\   '<Leader>q' : '>>buffer',
\   '<space><space>' : '>buffer',
\ })
  execute 'nnoremap <silent>' key ':QuickRun' com '-mode n<CR>'
  execute 'vnoremap <silent>' key ':QuickRun' com '-mode v<CR>'
endfor

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vim-ref
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"カーソル下のキーワードを引く。
nnoremap <silent>  <Space>k :Ref<Space>refe<Space><C-r><C-w><CR>
"CTRL-W	カーソル下の wordという意味。

"コマンドでキーワードを引く。
"""nmap <Space>r :<C-u>Ref refe<Space>

nnoremap <silent> <Leader>r :Ref<Space>ri<Space><C-r><C-w><CR>
nnoremap <silent>  <Space>r :Ref<Space>ri<Space><C-r><C-w><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" Python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" Python インデント タブ
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"nmap <silent> <space>t :IndentGuidesToggle<CR>
"nmap <silent> tt :IndentGuidesToggle<CR>
	nmap <silent> gi      :IndentGuidesToggle<CR>

"	map <silent> tt   :IndentGuidesToggle<CR>
"	lmap <silent> tt  :IndentGuidesToggle<CR>
"	nmap <silent> tt      :IndentGuidesToggle<CR>
"	vmap <silent> tt <Esc>:IndentGuidesToggle<CR>
"	omap <silent> tt      :IndentGuidesToggle<CR>
"	imap <silent> tt <Esc>:IndentGuidesToggle<CR>
"	cmap <silent> tt <C-u>:IndentGuidesToggle<CR>

























