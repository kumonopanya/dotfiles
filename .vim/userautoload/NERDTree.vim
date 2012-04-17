"vimプラグインNERDTree（v4.2.0）を導入。
"NeoBundleが導入済みなら.vimrcにも直接貼り付けられる。

"色々書いてみたけど、ほぼデフォルトで何の問題もなかった。

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag"NERDTree : ツリー型エクスプローラ 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" NERDTreeの普段の使い方、
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Ctrl-e
"NERDTreeのオン、オフ。

"Ctrl-w w
"NERDTreeと編集中のバッファとの間をジャンプ。

"jとk でリストを上下移動

"Enterキーでファイルやディレクトリを開く。

"m ファイルを追加、移動、削除、コピー、グレップ検索（プラグインで追加）をしたくなったら。
" このメニューを閉じる時はEnterキーを二回。

"/ で検索（開いているノードに限る）。
"例えば、ディレクトリをOコマンドでディレクトリを再帰的に全部開いて、
"/でファイル名やディレクトリ名を検索する。

"u 親ディレクトリに移動しNERDTreeのリストを更新する。
"C カーソル上にあるディレクトリに移動しNERDTreeのリストを更新する。

"B ブックマークリストのオン、オフ。
"  ブックマークするにはコマンドラインからファイルやディレクトリを指定する。

"? わからなくなったらヘルプを表示。

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 基本的なコマンド
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"起動：コマンドモードでNERDTree
"起動：Ctrl-e

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ファイルの操作
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"o : ディレクトリを開く or ファイルを開く
"O : 再帰的にディレクトリを開く
"s : 左右分割で開く

"マウス操作：（設定によってはシングルクリックでも開くようになる。）
"マウスでダブルクリック	oと同じ
"マウスでミドルクリック	
"	ファイル上では上下分割して開く。
"	ディレクトリ上ではNERDTreeを新たに開く。

"go プレビュー（通常で開く場合との違いがわからない）
"t	ファイルを新しいタブで開く
"T 	裏でファイルを新しいタブで開く 
"マウスでミドルクリック	上下に分割して開く
"i	上下に分割して開く

"gi プレビュー上下に分割して見れる
"s	左右に分割して開く。
"gs	プレビュー左右に分割してれる。

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ディレクトリの操作
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"oもしくはマウスでダブルクリック
"ディレクトリを開いたり閉じたりする。

"O	ディレクトリを再帰的に展開する
"x	カーソル位置を含むディレクトリを折りたたむ
"X	子ノードを折りたたむ

"マウスでミドルクリック
"e	Explorerを新たに開く

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ブックマークの操作
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"o	ブックマークを開く。
"t	新しいタブに開く。
"T	バックグラウンドで新しいタブに開く。
"D	ブックマークの削除。

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ツリーの操作
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"P カーソルをルートディレクトリの場所へ移動
"p カーソルを一つ上の親ディレクトリに移動
"K カーソルを最初の子ノードに移動 最初の子へ
"J カーソルを最後の子ノードに移動 最後の子へ

" <C-j>: カーソルを下の兄弟ノードに移動 次へ go to next sibling
" <C-k>: カーソルを上の兄弟ノードに移動 前へ go to prev sibling

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" Filesystem mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"C: ルートの変更	現在のディレクトリに
"change tree root to the selected dir 
"u: ルートを上げる	move tree root up a dir
"U: move tree root up a dir
"   but leave old root open
"r: 再描画	ディレクトリ	refresh cursor dir
"R: 再描画	ツリー全体を再表示	refresh current root
"m: ファイルシステムメニューを開く	メニュー表示	Show menu
"cd:現在のディレクトリに変更	change the CWD to the
"   selected dir

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" Tree filtering mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"I: 隠しファイルのオンオフ	hidden files (on)
"f: ファイルフィルタを切り替える	file filters (on)
"   NERDTreeIgnoreで指定したファイル。
"F: NERDTreeShowFilesオプションを切り替える	files (on)
"B: ブックマークオンオフ	bookmarks (off)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" Bookmark commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"コマンド一覧
":Bookmark <name>
":BookmarkToRoot <name>
":RevealBookmark <name>
":OpenBookmark <name>
":ClearBookmarks [<names>]
":ClearAllBookmarks

"説明
":Bookmark <name> ブックマークファイルに追加。
":BookmarkToRoot <name> 不明
":RevealBookmark <name> 不明
":OpenBookmark <name> 指定したブックマークを開く。
":ClearBookmarks [<names>] 指定したブックマークを消す
":ClearAllBookmarks	全部のブックマークを消す。

"Bookmarkは指定された場所にファイルが作成され記憶される。
"デフォルトでは
"$HOME/.NERDTreeBookmarks

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" Other mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"q: NERDTreeを閉じる	Close the NERDTree window
"A: 画面全体にNERDTreeを開く。
"   ズーム	Zoom (maximize-minimize)
"   the NERDTree window
"?: ヘルプ表示切り替え	toggle help

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" メニュー操作
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"メニュー
"m : メニューを開く
"（メニューはどうやって閉じるんだろう？いまはEnterキーを２回で閉じている。）
"メニュー操作
"a : 新しいファイル、新しいディレクトリを作る。
"	ファイル名が「/」で終わる場合はディレクトリが作成される。
"m : ファイル、ディレクトリを移動する。
"d : ファイル、ディレクトリを削除する。
"c : ファイル、ディレクトリをコピーする。
"g : grepを実行（grep用のプラグインをインストール済み）

"ファイル作成の操作
"filename.txt を作成したい場合
"作成したいディレクトリ上にカーソルを持っていく。 
"m (メニュー)を押す
"a (add)を押す
"filename.txt を入力する
"ディレクトリを作りたい場合は後ろに/を付ける。

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 追加プラグイン
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"grep_menuitem.vim #
"ディレクトリ全体のgrep検索。
"https://gist.github.com/414375
"
"使い方ですが、ダウンロードしたスクリプトファイルは
"~/.vim/nerdtree_plugin/
"にコピーした後、VimでNERDTreeを起動。
"“m”でメニューを開くと、メニューに追加されています。

"選択されたディレクトリ以下を対象にgrepが実行される。
"HITしたファイル名が一覧で表示されます。

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 参考サイト
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"公式マニュアル
"doc/NERD_tree.txt at master from scrooloose/nerdtree - GitHub
"https://github.com/scrooloose/nerdtree/blob/master/doc/NERD_tree.txt

"NERDTree
"scripts/18 - VimWiki
"http://vimwiki.net/?scripts%2F18

"にゃほ～ - NERDTreeでgrep検索
"http://yp.xenophy.com/?p=78

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" .vimrc 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"NERDTreeはNeoBundleでインストール済み。
"scrooloose/nerdtree GitHub
"https://github.com/scrooloose/nerdtree
"NeoBundle 'scrooloose/nerdtree.git'

"<C-e>でNERDTreeをオンオフ。いつでもどこでも。
"	map <silent> <C-e>   :NERDTreeToggle<CR>
"	lmap <silent> <C-e>  :NERDTreeToggle<CR>
	nmap <silent> <C-e>      :NERDTreeToggle<CR>
	vmap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
	omap <silent> <C-e>      :NERDTreeToggle<CR>
	imap <silent> <C-e> <Esc>:NERDTreeToggle<CR>
	cmap <silent> <C-e> <C-u>:NERDTreeToggle<CR>

"引数なしでvimを開いたらNERDTreeを起動、
"引数ありならNERDTreeは起動しない、引数で渡されたファイルを開く。
"How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd vimenter * if !argc() | NERDTree | endif

"他のバッファをすべて閉じた時にNERDTreeが開いていたらNERDTreeも一緒に閉じる。
"How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"NERDChristmasTree カラー表示する。
"Defaultでカラー表示、カラースキーマを設定しているとそちらが優先される？
"Values: 0 or 1.
"Default: 1.
"let g:NERDChristmasTree=0
"let g:NERDChristmasTree=1

"ファイルオープン後の動作 
"0 : そのままNERDTreeを開いておく。
"1 : NERDTreeを閉じる。
"Values: 0 or 1.
"Default: 0
"let g:NERDTreeQuitOnOpen=0
"let g:NERDTreeQuitOnOpen=1

"NERDTreeIgnore	無視するファイルを設定する。
"'\.vim$'ならばfugitive.vimなどのファイル名が表示されない。
"\ エスケープ記号
"$ ファイル名の最後
"f コマンドの設定値
let g:NERDTreeIgnore=['\.clean$', '\.swp$', '\.bak$', '\~$']
"let g:NERDTreeIgnore=['\.vim$', '\.clean$']
"let g:NERDTreeIgnore=['\.vim$', '\~$']
"let g:NERDTreeIgnore=[]

"NERDTreeShowHidden	隠しファイルを表示するか？
"I コマンドの設定値
"0 : 隠しファイルを表示しない。
"1 : 隠しファイルを表示する。
"Values: 0 or 1.
"Default: 0.
let g:NERDTreeShowHidden=0
"let g:NERDTreeShowHidden=1

"ディレクトリだけ表示してファイル名は隠す。
"ファイルの表示、非表示をトグルするときの初期値。
"F コマンドの設定初期値
"0 : 最初からファイルを表示しない。
"1 : 最初からファイルを表示する。
"Values: 0 or 1.
"Default: 1.
"let g:NERDTreeShowFiles=0
"let g:NERDTreeShowFiles=1

"カーソルラインをハイライト表示する。
"（カラースキーマが優先される？）
"0 : 色付けしない。
"1 : カラー表示をする。
"Values: 0 or 1.
"Default: 1.
"let g:NERDTreeHighlightCursorline=0
"let g:NERDTreeHighlightCursorline=1

"ブックマークリストの表示。
"0 : ブックマークリストを最初から表示しない。
"1 : ブックマークリストを最初から表示する。
"Values: 0 or 1.
"Default: 0.
"let g:NERDTreeShowBookmarks=0
"let g:NERDTreeShowBookmarks=1

"NERDTreeのツリーを開く場所、左側か、右側か。
"Values: "left" or "right"
"Default: "left".
"let g:NERDTreeWinPos="left"
"let g:NERDTreeWinPos="right"

"NERDTreeのツリーの幅
"Default: 31.
"let g:NERDTreeWinSize=45

"ブックマークや、ヘルプのショートカットをメニューに表示する。
"0 表示する
"1 表示しない
"Values: 0 or 1.
"Default: 1.
"let g:NERDTreeMinimalUI=0
let g:NERDTreeMinimalUI=1

"NERDTreeを+|`などを使ってツリー表示をする。
"ディレクトリが閉じている場合には+を先頭につける。
"ディレクトリが開いている場合には~を先頭につける。
"ファイルには-を先頭につける。
"0 : 綺麗に見せる。
"1 : +|`などを使わない
"Values: 0 or 1
"Default: 1.
let g:NERDTreeDirArrows=0
"let g:NERDTreeDirArrows=1

"マウス操作方法
"NERDTreeMouseMode
"Values: 1, 2 or 3.
"Default: 1.
"1 : ファイル、ディレクトリ両方共ダブルクリックで開く。
"2 : ディレクトリのみシングルクリックで開く。
"3 : ファイル、ディレクトリ両方共シングルクリックで開く。
let g:NERDTreeMouseMode=1
"let g:NERDTreeMouseMode=2
"let g:NERDTreeMouseMode=3

"NERDTreeBookmarksFile
"ブックマークを記録したファイルの設置場所を指定。
"Values: a path
"Default: $HOME/.NERDTreeBookmarks

"NERDTreeShowLineNumbers
"0 : 行番号を表示しない。
"1 : 行番号を表示する。
"Values: 0 or 1.
"Default: 0.
"let NERDTreeShowLineNumbers=0
"let NERDTreeShowLineNumbers=1

"NERDTreeStatusline		NERDtreeウィンドウにステータスラインを表示。
"Values: Any valid statusline setting.
"Default: %{b:NERDTreeRoot.path.strForOS(0)}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" その他オプション
""tag" 未設定＆未使用＆未翻訳。
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"loaded_nerd_tree			NERDTreeスクリプトの読み込み設定 プラグインのオンオフなど？？？。
"NERDTreeChDirMode		vimのカレントディレクトリを変更するタイミングを設定する？？？
"NERDTreeSortOrder		ソート順を設定

"|'NERDTreeAutoCenter'|          Controls whether the NERD tree window centers
"                                when the cursor moves within a specified
"                                distance to the top/bottom of the window.
"|'NERDTreeAutoCenterThreshold'| Controls the sensitivity of autocentering.

"|'NERDTreeCaseSensitiveSort'|   Tells the NERD tree whether to be case
"                                sensitive or not when sorting nodes.

"|'NERDTreeHijackNetrw'|         Tell the NERD tree whether to replace the netrw
"                                autocommands for exploring local directories.



