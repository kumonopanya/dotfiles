" Maintainer:	kumopan
" Last Change:	July 21 2011

" term				白黒端末での属性
"	cterm				カラー端末での属性
"	ctermfg			カラー端末での文字色
"	ctermbg			カラー端末での背景色
"	gui					GUI での属性
"	guifg				GUI での文字色
"	guibg				GUI での背景色

"	*gui-colors*
"推奨されている色名 (これらはほとんどのシステムで利用可能である)
" Red				LightRed			DarkRed
" Green			LightGreen		DarkGreen		SeaGreen
" Blue			LightBlue			DarkBlue		SlateBlue
" Cyan			LightCyan			DarkCyan
" Magenta		LightMagenta	DarkMagenta
" Yellow		LightYellow		Brown				DarkYellow
" Gray			LightGray			DarkGray
" Black			White

" cterm=none	ノーマル
" cterm=bold	太文字



""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"背景を黒
set background=dark

"過去の設定をクリア
hi clear

if exists("syntax_on")
  syntax reset
endif

"名前の登録
"hi.vim
let colors_name = "hi"

" Vim >= 7.0 specific colors
if version >= 700

	"カーソルのあるカレントの行に下線がつきます。
	set cursorline
"	hi CursorLine ctermfg=Blue
	hi CursorLine ctermbg=DarkGray
  hi CursorLine guibg=#2d2d2d

	"縦方向のハイライト。
	set cursorcolumn
"	hi CursorColumn ctermfg=Green
	hi CursorColumn ctermbg=DarkGray
  hi CursorColumn guibg=#2d2d2d

	"対応する括弧がハイライト
  "hi MatchParen 	guifg=#f6f3e8 guibg=#857b6f gui=bold


endif













































" General colors
hi Cursor 			guifg=NONE    guibg=#656565 gui=none
hi Normal 			guifg=#f6f3e8 guibg=#242424 gui=none
hi NonText 			guifg=#808080 guibg=#303030 gui=none
hi LineNr 			guifg=#857b6f guibg=#000000 gui=none
hi StatusLine 	guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC guifg=#857b6f guibg=#444444 gui=none
hi VertSplit 		guifg=#444444 guibg=#444444 gui=none
hi Folded 			guibg=#384048 guifg=#a0a8b0 gui=none
hi Title				guifg=#f6f3e8 guibg=NONE		gui=bold
hi Visual				guifg=#f6f3e8 guibg=#444444 gui=none
hi SpecialKey		guifg=#808080 guibg=#343434 gui=none

" Syntax hiing
"hi Comment 		guifg=#99968b gui=italic
"hi Comment 		term=bold cterm=bold ctermfg=6 gui=italic guifg=#99968b

"hi Comment 			term=none cterm=none ctermfg=White		ctermbg=none	

"hi Comment ctermfg=green guifg=green cterm=bold




hi Todo 			guifg=#8f8f8f gui=italic
hi Constant 	guifg=#e5786d gui=none
hi String 		guifg=#95e454 gui=italic
hi Identifier guifg=#cae682 gui=none
hi Function 	guifg=#cae682 gui=none
hi Type 			guifg=#cae682 gui=none
hi Statement 	guifg=#8ac6f2 gui=none
hi Keyword		guifg=#8ac6f2 gui=none
hi PreProc 		guifg=#e5786d gui=none
hi Number			guifg=#e5786d gui=none
hi Special		guifg=#e7f6da gui=none



" 行番号
hi LineNr		ctermfg=lightgrey
hi NonText	ctermfg=darkgrey
hi Folded		ctermfg=blue

" 特殊記号
hi SpecialKey	cterm=underline ctermfg=darkgrey 
hi StatusLine	term=NONE cterm=NONE ctermfg=black ctermbg=white
hi TabLine		cterm=none ctermfg=black ctermbg=white
hi TabLineSel	cterm=bold ctermfg=white ctermbg=black


"ポップアップの配色
"hi Pmenu		ctermbg=black		ctermfg=gray
"hi PmenuSel	ctermbg=darkcyan	ctermfg=black
"hi PmenuSbar	ctermbg=darkred

hi Pmenu		ctermbg=darkblue
hi PmenuSel		ctermbg=darkred
hi PmenuSbar	ctermbg=darkblue
hi PMenuThumb 	ctermbg=darkcyan

"vim tekuniku p334
"hi Pmenu		ctermbg=8
"hi PmenuSel		ctermbg=1
"hi PmenuSbar	ctermbg=0
"hi PMenuThumb 	ctermbg=darkcyan

"highlight Pmenu ctermbg=4
"highlight PmenuSel ctermbg=1
"highlight PMenuSbar ctermbg=4

"hi Pmenu guibg=#666666
"hi PmenuSel guibg=#8cd0d3 guifg=#666666
"hi PmenuSbar guibg=#333333








