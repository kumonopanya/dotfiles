" Maintainer:	kumonopanya
" Last Change:	2012年5月23日

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 基本設定知識
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" term			白黒端末での属性
" cterm			カラー端末での属性
" ctermfg		カラー端末での文字色
" ctermbg		カラー端末での背景色
" gui			GUI での属性
" guifg			GUI での文字色
" guibg			GUI での背景色

"	*gui-colors*
"推奨されている色名 (これらはほとんどのシステムで利用可能である)
" Red			LightRed		DarkRed
" Green			LightGreen		DarkGreen		SeaGreen
" Blue			LightBlue		DarkBlue		SlateBlue
" Cyan			LightCyan		DarkCyan
" Magenta		LightMagenta    DarkMagenta
" Yellow		LightYellow		Brown			DarkYellow
" Gray			LightGray		DarkGray
" Black			White

" cterm=none	ノーマル
" cterm=bold	太文字

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 初期設定
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"過去の設定をクリア
hi clear

"背景を黒
set background=dark

if exists("syntax_on")
    syntax reset
endif

"名前の登録
let g:colors_name="hi"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" カーソルライン
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"バージョン7の新機能
" Vim >= 7.0 specific colors
if version >= 700
"   hi CursorLine cterm=underline

	"カーソルのあるカレントの行に下線がつきます。
	set cursorline
"	hi CursorLine ctermfg=Blue
"	hi CursorLine ctermbg=DarkGray
"   hi CursorLine guibg=#2d2d2d

"   hi CursorLine cterm=underline

	"縦方向のハイライト。
"	set cursorcolumn
"	hi CursorColumn ctermfg=Green
"	hi CursorColumn ctermbg=DarkGray
"   hi CursorColumn guibg=#2d2d2d

"  hi CursorColumn cterm=underline

	"対応する括弧がハイライト
  "hi MatchParen 	guifg=#f6f3e8 guibg=#857b6f gui=bold

endif

"==========================================================

"端末が256色対応時
set t_Co=256

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" よく表示される色の設定
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"通常のテキスト
"hi Normal       cterm=bol

"カーソル下の文字
"hi Cursor       cterm=bold

"ディレクトリ
"hi Directory cterm=bold "ctermfg=lightblue
hi Directory cterm=bold ctermfg=blue

"青文字
"コメント
hi Comment cterm=bold ctermfg=cyan
"hi Comment	guifg=#99968b
"hi Comment	cterm=bold ctermfg=6
"hi Comment	cterm=none ctermfg=White ctermbg=none	
"hi Comment ctermfg=green cterm=bold

"黄色文字
"ブロック
hi Statement cterm=bold ctermfg=yellow

"メソッド名色
hi Identifier ctermfg=LightBlue

"クラス名色
hi PreProc cterm=bold "ctermfg=DarkCyan 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" タブライン色
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"  hi TabLine cterm=bold ctermfg=lightblue ctermbg=white 
"  hi TabLineFill cterm=bold ctermfg=lightblue ctermbg=white 
"  hi TabLineSel ctermfg=white ctermbg=lightblue

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ステータスライン色
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"  hi StatusLine   cterm=bold ctermfg=lightblue ctermbg=white 
"  hi StatusLineNC ctermfg=white ctermbg=lightblue 
"  hi StatusLine   cterm=bold
"  hi StatusLineNC cterm=bold

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" インクリメンタルサーチ色
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"hi IncSearch    cterm=none ctermbg=blue ctermfg=grey guifg=slategrey guibg=khaki
"hi IncSearch    cterm=bold


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" その他
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"垂直分割したウィンドウの区切りとなる桁
"hi VertSplit    cterm=bold

" ModeMsg 'showmode'のメッセージ (例. "-- INSERT --")
" hi ModeMsg  cterm=bold 
" hi ModeMsg  cterm=bold

"このメッセージはスクリーンがメッセージで埋め尽くされた時に表示される。
"'more'オプションがオンの時だけ与えられる。
"|hl-MoreMsg|グループで強調される。
"  -- More --
"  -- More -- SPACE/d/j: screen/page/line down, b/u/k: up, q: quit
" hi MoreMsg  cterm=bold ctermfg=darkgreen 
"hi MoreMsg   cterm=bold

"ヒットエンタープロンプト|hit-enter|とyes/noクエスチョン
"このメッセージは読んでもらいたい何かがあって、
"スクリーンの再描画が中断されているときに与えられる:
"hi Qestion cterm=bold ctermfg=darkgreen 
"hi Question     cterm=bold

"最後に検索した語のハイライト('hlsearch')を参照。
" hi Search ctermfg=white ctermbg=red 
"hi Search       cterm=bold

":set all"、":autocmd"などによる出力のタイトル。
" hi Title  cterm=bold ctermfg=darkmagenta 
"hi Title        cterm=bold

"ビジュアルモード選択
" hi Visual cterm=reverse 
"hi Visual       cterm=bold

"警告メッセージ
" hi WarningMsg cterm=bold ctermfg=darkred 
" hi WarningMsg   cterm=bold

"コマンドラインに現れるエラーメッセージ
" hi ErrorMsg cterm=bold ctermfg=grey ctermbg=red 

"HTMLドキュメント中に埋め込まれたJavaScriptやVisual Basicについては、
"文は'Special'でハイライトされ、コメントや文字列などは標準のプログラミング言語と同じように色づけされる。
" hi Special cterm=bold ctermfg=red
hi Special      cterm=bold

"カーソル下の文字、または直後の文字が括弧であるとき、
"その文字と対応する括弧に使われる。
" hi MatchParen ctermfg=blue 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" その他、未設定
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"不明な設定項目

" hi Constant cterm=bold ctermfg=magenta 
" hi Constant     cterm=bold

" hi Type cterm=bold ctermfg=lightgreen 
" hi Type         cterm=bold

" hi Error ctermfg=darkcyan ctermbg=black 

" hi Todo ctermfg=black ctermbg=darkcyan 
" hi Todo         cterm=bold

" hi Identifier   cterm=bold

" hi PreProc      cterm=bold

"Ignore グループを使うときは、
"conceal 機能も使うと便利かもしれません。
"|conceal| 参照。
" hi Ignore       cterm=bold

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" グループのリンク
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"複数の構文グループに対して同じハイライトを適用させるには、
"両方のグループから一つの強調グループにリンクを作り、
"リンク先に対して色属性を与えると簡単である。

"リンクを作るには:
"    :hi[ghlight][!] [default] link {from-group} {to-group}
"リンクを削除するには:
"    :hi[ghlight][!] [default] link {from-group} NONE

hi link IncSearch		Visual
hi link String			Constant
hi link Character		Constant
hi link Number			Constant
hi link Boolean			Constant
hi link Float			Number
hi link Function		Identifier
hi link Conditional		Statement
hi link Repeat			Statement
hi link Label			Statement
hi link Operator		Statement
hi link Keyword			Statement
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" メニューカラー
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ポップアップメニュー
" Pmenu		 通常の項目。
" PmenuSel	 選択されている項目。
" PmenuSbar	 スクロールバー。
" PmenuThumb スクロールバーのつまみ部分。

"パターン1
hi Pmenu		ctermbg=darkblue
hi PmenuSel		ctermbg=darkred
hi PmenuSbar	ctermbg=darkblue
hi PMenuThumb 	ctermbg=darkcyan

"パターン2
"hi Pmenu		ctermbg=black		ctermfg=gray
"hi PmenuSel	ctermbg=darkcyan	ctermfg=black
"hi PmenuSbar	ctermbg=darkred

"vimテクニックバイブル p334
"パターン3
"hi Pmenu		ctermbg=8
"hi PmenuSel	ctermbg=1
"hi PmenuSbar	ctermbg=0
"hi PMenuThumb 	ctermbg=darkcyan

"パターン4
"hi Pmenu 		ctermbg=4
"hi PmenuSel 	ctermbg=1
"hi PMenuSbar 	ctermbg=4

"パターン5
"hi Pmenu guibg=#666666
"hi PmenuSel guibg=#8cd0d3 guifg=#666666
"hi PmenuSbar guibg=#333333

"パターン6
"hi Pmenu     ctermbg=4
"hi PmenuSel  ctermbg=5
"hi PmenuSbar ctermbg=0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 折りたたみ色
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"hi clear Folded
"hi clear FoldColumn
"hi Folded		ctermfg=blue
"hi Folded       cterm=bold
"hi FoldColumn   cterm=bold

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 行番号色
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 行番号
"パターン1
"hi LineNr		ctermfg=lightgrey
"hi NonText		ctermfg=darkgrey

"パターン2
"hi LineNr 		cterm=bold ctermfg=darkcyan 
"hi NonText  	cterm=bold ctermfg=darkred 

"hi NonText     cterm=bold
"hi NonText 	ctermfg=DarkBlue

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 特別なキー色
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

":map"でリストされるメタキーと特別なキー。
"テキスト中のunprintableな文字を表示するのにも使われる。
"一般に: 実際とは異なる文字で表示されるテキスト。
"hi SpecialKey 	ctermfg=DarkBlue
"hi SpecialKey  cterm=bold ctermfg=darkred 
"hi SpecialKey  cterm=bold
"hi SpecialKey	cterm=underline ctermfg=darkgrey 

"==========================================================






"==========================================================






"==========================================================






"==========================================================






"==========================================================




