

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ruby vim-ruby QuickFix Xmpfilter Rspec rails
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ruby ↑操作方法、説明↑			
"           ↓設定↓
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ruby
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"ruby
"autocmd FileType ruby setl tabstop=2 shiftwidth=2 softtabstop=0

"ruby
"おさかなラボ - [vim]矢印キーでコンパイルチェック
"http://kaede.to/~canada/doc/syntax-check-on-vim

"ruby対応
"autocmd BufNewFile *.rb set ft=fuby



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""






""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ファイルタイプ別設定
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"ファイルタイプ ruby,eruby
"現在のルビーを実行 or syntax check
"autocmd FileType ruby,eruby :map <S-x> <ESC>:!ruby %<CR>
"autocmd FileType ruby,eruby :map <Leader>e <ESC>:!ruby -cW %<CR>
"autocmd FileType ruby,eruby :map <S-Z> <ESC>:!ruby -c %<cr>

"ファイルタイプ html
"autocmd FileType html set filetype=xhtml

"Ruby構文チェック
"setlocalって?
"setlocalは、setと同じですが、
"その影響範囲が、カレントバッファまたはウインドウ内になります。
"こうする事で、別のバッファやウインドウでRubyとか編集した時に
"rubyの設定が反映されないですむようになります。
"autocmd FileType ruby,eruby setlocal makeprg=ruby\ -c\ %
"autocmd FileType ruby,eruby setlocal errorformat=%m\ in\ %f\ on\ line\ %l


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 構文チェック
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"保存時にプログラムの構文チェックを実行する
"vimテクニックバイブルp46
"augroup rbsyntaxcheck
"	autocmd!
"	autocmd BufWrite *.rb w !ruby -c
"augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vimでrubyのコードを保存した時に、シンタックスエラーをチェックして、エラーをハイライトする - joker1007の日記
"http://d.hatena.ne.jp/joker1007/20120301/1330614611

"ubuntu11.10
"/usr/share/vim/vim73/ftplugin/ruby.vim
function! s:ExecuteMake()
  if &filetype == 'ruby' && expand('%:t') !~? '^pry\d\{8}.\+\.rb'
    silent make! -c "%" | redraw!
  endif
endfunction

compiler ruby
augroup rbsytaxcheck
  autocmd! BufWritePost <buffer> call s:ExecuteMake()
augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"errormarker.vim を使って flymake っぽくするやつを試してみた - ◆F99a.q8oVEの日記
"http://d.hatena.ne.jp/f99aq/20080814/1218783740

"errormarker.vimがCUI版のVimだと画面が乱れるのでパッチを当てた - 日々是鍛練
"http://d.hatena.ne.jp/yoppiblog/20110319/applied_patch_errormarker



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vim-ruby
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"挿入モードで
"<C-Space>でomni補完
"<C-Space>でomni補完
"<C-Space>でomni補完
"imap <C-u> <C-x><C-o>
"imap <C-Space> <C-x><C-o>

"自動補完について
"Vim では [Ctrl-n] での補完機能
"[Ctrl-x][Ctrl-o] でのオムニ補完が使える



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" QuickFix
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"QuickFix
"対応する言語のシンタックスあるいは実行結果のエラーに基づくデバッグを支援するもの

"QuickFix ha vim honraino kinou
":cn #次のエラー箇所へジャンプ
":cp #前のエラー箇所へジャンプ(:cNでも同じ)
":ccl #QuickFixを閉じる

"vimでquickfixを自動で開く - Webtech Walker
"http://webtech-walker.com/archive/2009/09/29213156.html
"autocmd QuickfixCmdPost make,grep,grepadd,vimgrep if len(getqflist()) != 0 | copen | endif

"vim vimgrepやmake後にQuickFixウィンドウを自動的に開く方法
"http://kaworu.jpn.org/kaworu/2008-06-07-1.php

"autocmd QuickfixCmdPost make,grep,grepadd,vimgrep copen

" 自動的に QuickFix リストを表示する
"autocmd QuickFixCmdPost make,grep,grepadd,vimgrep,vimgrepadd cwin
"autocmd QuickFixCmdPost lmake,lgrep,lgrepadd,lvimgrep,lvimgrepadd lwin



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"QuickFixでコンパイルチェック

"autocmd FileType ruby  :map <S-LEFT> <esc>:!/home/hi/.rvm/rubies/ruby-1.9.2-p290/bin/ruby -c %<cr>
"nmap <silent> <LEFT> :w<CR>:make -c %<CR>:cw<CR>:cfirst<CR>zz

"コンパイルチェック
"autocmd FileType php   :map <down> <esc>:!/usr/local/bin/php  -l %<cr>
"autocmd FileType perl  :map <down> <esc>:!/usr/bin/perl       -c %<cr>
"autocmd FileType ruby  :map <down> <esc>:!/usr/local/bin/ruby -c %<cr>

"実行
"autocmd FileType php   :map <up>   <esc>:!/usr/local/bin/php     %<cr>
"autocmd FileType perl  :map <up>   <esc>:!/usr/bin/perl          %<cr>
"autocmd FileType ruby  :map <up>   <esc>:!/usr/bin/ruby          %<cr>

"QuickFixを閉じる
"nmap <silent> <DOWN> :ccl<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" Xmpfilter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"gem i rcodetools
"Rspecテスト用のプラグイン
"README.vim

"Switching between implementation and test files
"The actual binding can be changed in your .vimrc as follows:
"let g:RCT_toggle_binding="<C-b><C-t>"  " use ^X^T to go test <=> implementation

"Code completion
"This functionality relies on fri for quick lookups. It can be enabled by setting
"let g:rct_completion_use_fri = 1  " 0 by default (disabled)

" 20 by default, about a couple secs max wait on a normal machine
"let g:rct_completion_info_max_len = 20


"Quick RI documentation and exact tag jumping



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"xmpfilterをvim上で使うための.vimrcでのキー設定。
"annotations＝注釈
"使用コマンド一覧

"eigenclass - xmpfilter: automagic Test::Unit assertions/RSpec expectations and code annotations
"http://eigenclass.org/hiki/xmpfilter

"<Leader>g	現在行/選択行にxmpfilterを実行するコマンド
"<Leader>f	バッファ全体にxmpfilterを実行 
"<Leader>a	現在行/選択行に「# =>」マークを追加
"<Leader>d	現在行/選択行の「# =>」マークを削除

"RSpec
"<Leader>A	現在行/選択行に
"<Leader>F	ファイル全体に



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"設定
" plain annotations
" 現在行/選択行にxmpfilterを実行するコマンド
"map <silent> <Leader>g !xmpfilter -a<cr>
"nmap <silent> <Leader>g V<Leader>g
"imap <silent> <Leader>g <ESC><Leader>ga

" Annotate the full buffer
" I actually prefer ggVG to %; it's a sort of poor man's visual bell 
" バッファ全体にxmpfilterを実行 
"nmap <silent> <Leader>f mzggVG!xmpfilter -a<cr>'z
"imap <silent> <Leader>f <ESC><Leader>f

" Add # => markers
" 基本的な注釈「# =>」マークを行の最後尾に追加
" 現在行/選択行に「# =>」マークを追加
"map <silent> <Leader>a !xmpfilter -m<cr><Leader>e
"nmap <silent> <Leader>a V<Leader>a
"imap <silent> <Leader>a <ESC><Leader>aa

" Remove # => markers
" 現在行/選択行の「# =>」マークを削除
" ms:call解説
" mがマーク（a～z）
" zがマークで覚えさせる場所の記号
" call すぐしたにある.vimrcに書いた関数を呼ぶ
" <ESC><ESC>はハイライトを消すコマンドをこのファイルに設定してある。
"vmap <silent> <Leader>d ms:call RemoveRubyEval()<CR> <ESC><ESC>
"nmap <silent> <Leader>d V<Leader>d
"imap <silent> <Leader>d <ESC><Leader>da

"function! RemoveRubyEval() range
"  let begv = a:firstline
"  let endv = a:lastline
"  normal Hmt
"  set lz
"  execute ":" . begv . "," . endv . 's/\s*# \(=>\|!!\).*$//e'
"  normal 'tzt`s
"  set nolz
"  redraw
"endfunction

"# =>を追加する場所が右端すぎるので間を詰める。
":%s/ \+#/    #/g
"vmap <silent> <Leader>e <ESC><Leader>e
"nmap <silent> <Leader>e :%s/     \+# =>/     # =>/g<CR><ESC><ESC>
"imap <silent> <Leader>e <ESC><Leader>e



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"XMP Rspec
" assertions
" xmpfilter -＜オプション指定＞
" -s	RSpec generate RSpec expectations instead
" -u	Test::Unit 

" 現在行/選択行に
"map <silent> <Leader>A !xmpfilter -s<cr>
"nmap <silent> <Leader>A V<Leader>A
"imap <silent> <Leader>A <ESC><Leader>Aa

"ファイル全体に
"nmap <silent> <Leader>F mzggVG!xmpfilter -s<cr>'z
"imap <silent> <Leader>F <ESC><Leader>Fa



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" rubycomplete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"rubycomplete.vim
"Rubyのオムニ補完を設定(ft-ruby-omni)
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete

"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
"autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
"autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" rails
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"rails関連
"http://homepage3.nifty.com/moro/rails_vim_cheatsheet.pdf
"短縮名は「:Rabbrev」で現在のファイルタイプに応じた一覧が表示されます。

"Rails関連ファイルで文字コードをUFT-8に設定
"autocmd User Rails* set fenc=utf-8

"rails.vim
"let g:rails_level=4
"let g:rails_default_file="app/controllers/application.rb"

"let g:rails_default_database="sqlite3"
"let g:rails_default_file="mysql"



