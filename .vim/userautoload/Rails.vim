"Rails.vim

"Vim-users.jp - Hack #209: Vim で Ruby on Rails の開発を行なう
"http://vim-users.jp/2011/03/hack209/
"
"
"用途は主に 3 種類あります。
"
"1:rails コマンド、Rake の代用
"
"例えば、Ruby on Rails のプロジェクトディレクトリで、以下のように打鍵すると Controller の作成が行えます。
"
":Rgenerate controller names index new create
"
"他にも :Rake や :Rserver, :Rlog, :Rails などが定義されています。
"
"
"
"2:ファイラとしての rails.vim
"
"rails.vim では、Alternate Files, Related Files という概念が導入されています。
"
"以下にhelp (:help rails) から例を引用します。
"Current file	 			Alternate file		Related file ~
"model	 					unit test			schema definition
"controller (in method)	 	functional test		template (view)
"template (view)	 		functional test		controller (jump to method)
"migration	 				previous migration	next migration
"config/database.yml	 	config/routes.rb	config/environments/*.rb
"
"現在開いているファイルが Model だった場合、
"Alternate file は Unit Test、Related file は
"schema definition (db/schema.rb) という意味です。
"
"移動には :A, :R というコマンドを使用します。
":A は Alternate file への移動、
":R は Related file への移動が行えます。
"また、ファイルの開き方によって以下の5種類のコマンドが定義されています。:A, :R 共通です。
"
":AE	:A と等価、現在の Window に開く
":AS	Window を分割して開く
":AV	Window を縦に分割して開く
":AT	新しい Tab に開く
":AD	現在の Buffer に展開する
"ほかにも、:find や、:Rfind といった便利なコマンドがたくさん用意されています。
"
"
"
"3:Syntax highlight や、略語の追加
"
"Ruby on Rails での開発を助ける様々な設定が追加されます。
"Syntax highlight に始まり、便利な略語、gf の拡張など、かゆいところに手の届く Plugin と言えます。
"
"以下に help より略語の一部を引用します。
"
"rp(	render :partial =>
"rp(	render :partial =>
"vs(	validates_size_of
"pa[	params
"AR::	ActionRecord
":a	:action =>
"
"
"
":R	 controller と view の入れ替え
"gf	 カーソル位置のモデルに飛ぶ
":bn	 gf で飛んだ先から戻ってくる?(よくわかりません。)
"
"
"以下の機能は、Rmodel <tab>で補完ができます。
"model名などは単数形、複数形は区別されます。
"Rmodel model名	 modelに飛ぶ
"Rcontroller controller名	 controllerに飛ぶ
"Rview view名	 viewに飛ぶ
"




