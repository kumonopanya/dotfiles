


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimfiler  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vimテクニックバイブルp64


" リネーム

" リネームするファイルを選択します。
" 個別にリネームしたいファイルにカーソルがあるときに<Space>を押すか、
" Vで一気に複数行を選択してから<Space>するとマークされます。
" 
" ファイルマスク(M)
" してから全選択*という方法もあります。
" 
" リネームする
" 
" 選択した状態でRで拡張リネームの画面が開きます。
" 
" この拡張リネームの画面は通常のvimの編集画面と何ら変わりありません。
" 
" ということは、
" 正規表現を用いた置換(’s/foo/bar/‘)
" も使えるし、
" 矩形選択(<C-v>)
" も使えるということです。
" 
" 私は正規表現が苦手なんですが、
" 矩形選択があるおかげで割合さささとリネームできてありがたいです。
" 
" リネームを反映させる
" 
" 編集が終われば通常のファイルの編集時と同じように:wで保存すると無事リネーム終了です。
" 
" 私はシェルなんかでさくさくリネームできる人ではないので、
" 直感的に利用できるこの拡張リネームはとても便利。



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" :VimFiler
" で起動。

" netrw を置き換えるように設定していれば
" :e .
" でも vimfiler が起動する。

" キー	機能
" o	別の vimfiler を起動
" 	既に二画面になっているときはディレクトリを同期
" 	（他方の vimfiler を現在の vimfiler に同期）
" O	別の vimfiler とディレクトリを同期
" 	（現在の vimfiler を他方の vimfiler に同期）
" ?	キーバインド一覧を表示
" q	vimfiler を終了



" カーソル操作／ファイル選択

" キー	機能
" Tab	バッファ切り替え
" j	カーソルを下に移動
" k	カーソルを上に移動
" Space	ファイルの選択／解除
" *	全ファイルの選択をトグル
" M	ファイルマスクを設定
" v	ファイルをプレビュー表示（vim の別バッファで開く）
" s	ファイルの整列順を変更
" Ctrl-G	ファイル名を表示
" .	隠しファイルを表示／非表示



" ファイルマスクの設定
" M による「ファイルマスクの設定」とは、
" 要するに「グロブパターンによる表示ファイルのフィルタリング」
" のことで、
" 例えばマスクを「 *.rb 」
" とすれば拡張子が「 .rb 」
" なファイルだけが一覧に表示される。



" プレビュー表示
" v による「ファイルのプレビュー表示」は、
" デフォルトでは「小さなバッファでファイルを開く」
" という動作になっているが、
" 変数 g:vimfiler_pedit_command の設定を変更することでこの動作はカスタマイズが可能。



" 整列順の変更
" s による「ファイルの整列順の変更」は、一覧に表示されるファイルの整列キーを指定する機能で、実行すると以下のようなプロンプトが表示される↓
" プロンプトにある通り、大文字で指定すると降順になる。
" n[one]
" s[ize]
" e[xtension]
" f[ilename]
" t[ime]
" m[anual]
" Select sort type(Upper case is descending order) none -> 



" ファイルを開く（関連付けを実行）
" キー	対象	機能
" e	カーソル下	ファイル → vim で開く
" 	ディレクトリ → vimfiler で開く
" x	カーソル下	システムの関連付けを実行
" 	Enter	カーソル下	vimfiler の関連付けを実行
" 	（ディレクトリの場合は移動）
" l	カーソル下	vimfiler の関連づけを実行
" E	--	外部ファイラでディレクトリを開く (Mac なら Finder など)



" システムの関連付けを実行
" x による「システムの関連付けを実行」とは、
" HTMLファイルなら既定の Webブラウザでそれを開き、
" 画像ファイルなら既定の画像ビューアでそれを開く、
" といったこと。

" vimfiler の関連付けを実行
" vimfiler の関連付けは設定ファイルにて以下のように設定できる↓

" call vimfiler#set_execute_file('vim', 'vim')
" call vimfiler#set_execute_file('txt', 'notepad')



" grep
" キー	対象	機能
" gr	選択／--	vimgrep を実行
" gr による「vimgrep の実行」は、
" 選択されているファイルがあればそれらを対象にし、
" なければ「 **/* 」でグロブしたファイルを対象にする。



" ファイル操作

" キー	対象	機能
" r	カーソル下／選択	ファイルの名前を変更
" m	--／選択	ファイルを移動
" c	--／選択	ファイルをコピー
" p	--	ファイルをペースト
" d	--／選択	ファイルを削除（ゴミ箱への移動）
" D	--／選択	ファイルを削除（rm 相当）
" u	--／選択	ファイルをゴミ箱から復元（d によって削除したもののみ有効）
" K	--	新規ディレクトリを作成
" N	--	新規ファイルを作成
" m, c, d, D, u は、選択されたファイルがない場合には
" カーソル下のファイルを選択する。
" よって、mm, cc, dd などとすることで
" カーソル下のファイルを移動／コピー／削除できる。



" 名前の変更
" r による「ファイルの名前変更」は、
" 選択されているファイルがある場合には
" 「拡張リネーム」という機能になる。
" これは、選択されたファイル名を別バッファ上で編集し、
" 「 :%s/ 」などで置換して保存することで
" 簡単に一括リネームが行える機能。



" 移動／コピー
" m, c による「ファイルの移動／コピー」は、
" ファイラが二画面（vimfiler が２つ開かれている状態）
" の時には他方のディレクトリへの移動／コピーとなり、
" 一画面時には Windows の Explorer風のクリップボード*2を介しての移動／コピーになる。
" その場合は移動／コピーしたいディレクトリへ移動して p でファイルをペーストする。



" 削除
" d による「ファイルの削除」
" は、
" 「ゴミ箱への移動」
" というデスクトップ環境におけるファイルの削除に近い動作をし、
" D による削除はコマンドラインにおける rm 相当の削除を行う。

" vimfiler における「ゴミ箱」
" は変数 g:vimfiler_trashbox_directory にて設定されたディレクトリのことであり、
" デフォルト値は '~/.vimfiler_trashbox'



" 復元
" u によって、
" 削除したファイルをゴミ箱から元あった場所に戻すことができるが、
" この機能はゴミ箱内にあるファイルを選択した状態で使うもので、
" 直前の削除をその場で Undo するものではない。



" 移動

" キー	機能
" h	上位のディレクトリに移動
" \	ルートディレクトリに移動
" ~	ホームディレクトリに移動する
" L	ドライブに移動
" $	ゴミ箱に移動
" Enter	カーソル下のディレクトリへ移動
" 	（ファイルの場合は vimfiler の関連付けを実行）
" J	ディレクトリを指定して移動



" ドライブに移動
" L による「ドライブに移動」は、
" UNIX な環境においては「/mnt および /media 以下への移動」になり、
" 実行すると以下のようなプロンプトが表示される↓

" [a] /media/441edc65-8bc2-46e2-b130-30dff3bd7de1
" [b] /media/cdrom
" [c] /media/cdrom0
" Please input drive alphabet or other directory: 



" ゴミ箱に移動
" $ による「ゴミ箱に移動」は、
" ファイルをゴミ箱へ移動する操作ではなく、
" ゴミ箱へ cd するという意味の移動である。
" u によるファイルの復元を行うためにはいったんゴミ箱へ移動する必要があり、
" その時に必要になる操作。



" シェル
" キー	効果
" H	シェルを起動
" vimshell があればそちらを起動、なければ :shell を実行
" ファイルが選択されていれば自動的に引数に!
" t	外部コマンドを非同期に実行
" !	外部コマンドを実行
" gv	gvim を起動



" シェルを起動
" H による「シェルの起動」では、選択されているファイルをコマンドライン引数として
" コマンドラインのひな形を組み立ててくれる。（vimshell がある場合）

" Current directory: /home/h1mesuke/hlib/ruby/hlib/text/*
" ..
" - align.rb      3.95  K !10/06/11 21:11
" * colorize.rb   4.76  K !10/06/11 21:11
" - convert.rb    4.47  K !10/06/11 21:11
" * guess.rb      1.86  K !10/06/11 21:11
" * match.rb      11.58 K !10/06/11 21:11
" 例えば、↑の状態で H を押すと vimshell が起動し、以下の状態になる↓
" （ ][ はキャレットの位置を表す）

" vimshell% ][ "/home/h1mesuke/hlib/ruby/hlib/text/colorize.rb" "/home/h1mesuke/hlib/ruby/hlib/text/guess.rb" "/home/h1mesuke/hlib/ruby/hlib/text/match.rb"



" 外部コマンドを実行
" ! による「外部コマンドの実行」では、
" 入力したコマンドライン中の「 * 」は選択されているファイル名のリストで置き換えられる。

" 上の例と同じファイル選択の状態で「 ! 」を押し、
" プロンプトから「 wc * 」と打つと出力は以下のようになる↓

"   190   490  4878 /home/h1mesuke/hlib/ruby/hlib/text/colorize.rb
"    83   221  1909 /home/h1mesuke/hlib/ruby/hlib/text/guess.rb
"   366   994 11862 /home/h1mesuke/hlib/ruby/hlib/text/match.rb
"   639  1705 18649 合計
" 続けるにはENTERを押すかコマンドを入力してください
" 他

" キー	効果
" Ctrl-L	画面を再描画






""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"キー	効果
"Ctrl-G	ファイル名を表示
"Ctrl-L	画面を再描画
"CR (EnterやReturn)	Vimfilerの関連づけを実行
"スペースキー	ファイルのチェックマークをトグル
"!	外部コマンドを実行して結果を表示
"$	ゴミ箱フォルダに移動
"*	ファイルの全選択のトグル
".	隠しファイルを表示
"?	キーバインドの一覧を表示
"D	ファイルを直接削除
"E	外部ファイラでディレクトリを表示 (MacならFinderなど)
"H	シェルを起動(VimShellがあればそちらを起動、
"なければ :shellを実行
"ファイルが選択されていれば自動的に引数に!
"K	ディレクトリを作成
"L	ドライブに移動
"M	ファイルマスクをかける
"N	新規ファイル作成
"P	ファイルをプレビュー表示(Vimの別バッファで開く)
"V	gvimを起動
"\	ルートディレクトリに移動
"c	選択されているファイルをコピー
"d	ファイルをゴミ箱に移動
"e	ファイルを編集
"ディレクトリ選択時には自動的に二画面ファイラで開く
"h	上位のディレクトリに移動
"j	カーソルを下に移動
"k	カーソルを上に移動
"l	Vimfilerの関連づけを実行
"m	ファイルを移動
"o	別のファイラを起動(既に二画面になっているときはディレクトリをそろえる)
"p	ペースト
"q	VimFilerを終了
"r	名前を変更する
"t	外部コマンドを実行(結果を表示しません)
"x	システムの関連付けを実行
"~	ホームディレクトリに移動する
"O	別のファイラとディレクトリを同期
"J	ディレクトリを指定して移動



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimfiler ↑操作方法、説明↑			
"               ↓設定↓
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vim標準ファイラーnetrwの替わる。
"let g:vimfiler_as_default_explorer = 1
":e .
"と入力すると起動する。

"破壊的コマンドを使えるようにする、削除やリネーム、新規作成など
"let g:vimfiler_safe_mode_by_default = 0

"VimFilerの起動
nnoremap <silent> ,f :<C-u>VimFiler<CR>








