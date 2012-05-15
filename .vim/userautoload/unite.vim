
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" unite.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"せっかくだから、俺はこの Unite + vim-ref を選ぶぜ！ - blog.remora.cx
"http://blog.remora.cx/2010/12/vim-ref-with-unite.html

"vim-refはvimでリファレンスを見るプラグイン
"Vimでunite.vimプラグインを使い始めて一週間 - アインシュタインの電話番号☎
"http://d.hatena.ne.jp/ruedap/20110117/vim_unite_plugin_1_week



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"uniteのプラグイン

"unite plugins - GitHub
"wiki
"https://github.com/Shougo/unite.vim/wiki/unite-plugins



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"キー	説明
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 起動設定
"<C-N> ,uf   ファイル一覧
"<C-P> ,ub   バッファ一覧
"<C-Z> ,um   最近使ったファイルの一覧
"      ,uu   常用セット
"      ,ua   全部乗せ
"      ,ur   レジスタ一覧



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"ノーマルモードでのunite.vimのデフォルトキーマッピング
"<CR>									選択している候補に対してデフォルトのアクションを実行する
"<ESC>								ノーマルモードに移行する
"<Tab>								選択している候補に対して実行するアクションを選択する

"<C-p> または <Up>		前の候補に移動。ただし候補の先頭にいる場合はループする
"<C-n> または <Down>	次の候補に移動。ただし候補の最後にいる場合はループする

"<C-f>								次の候補ページを表示
"<C-b>								前の候補ページを表示

"<C-h> または <BS>		カーソル直前の1文字を消す。
" 										文字が入力されていない場合はuniteを終了する

"<C-u>								カーソルから行の先頭までの文字をすべて削除する
"<C-w>								カーソル直前の単語を削除する

"<C-a> または <Home>	カーソルを行の先頭に移動する

"複数キーアクション
"<C-u><C-h>でuniteを終了する
"<C-a><C-h>でuniteを終了する



"/	候補を選択している場合は narrow アクションの実行
"d	候補を選択している場合は delete アクションの実行*1



"<Space>	候補を選択している場合はカレント行の候補のマークを反転させる。
"	複数の候補をマークすれば、複数の候補に対して一気にアクションを実行することができる



"x	候補を選択している場合はクイックマッチを行い、
"	選択した候補のデフォルトアクションを実行する。
"	マークしている候補がある場合は無効となる。

"<C-m> 	インサートモードでパスを入力中に<C-m>を押すと、
"その時リストで一番上のハイライトされているパスを確定（入力エリア上に補完）できる。
"一番上に表示されているパスを確定（補完）できる



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"コマンドモード
"k                    上移動
"j                    下移動

"コマンドモード、挿入モード
"<C-P>                上移動
"<C-N>                下移動

"ファイル名の上で、Enter を押すと開く。
" ウィンドウを分割して開いてくれる。
" Ctrl + J            上下に分割して開く
" Ctrl + K            左右に分割して開く




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"unite-rails
"railsプロジェクト内であれば
"「models」「controllers」「views」などにある
"ファイル一覧を表示して選択できる。 作者はbasyura氏。

"unite-rails.vim - basyura’s blog
"http://d.hatena.ne.jp/basyura/20110526/p1

"unite /app/models
"  :Unite rails/model
"
"unite /app/controllers
"  :Unite rails/controller
"
"unite /app/views
"  :Unite rails/view
"
"unite /app/helpers
"  :Unite rails/helper
"
"unite /app/mailers
"  :Unite rails/mailer
"
"unite /lib
"  :Unite rails/lib
"
"unite /db
"  :Unite rails/db
"
"unite /config
"  :Unite rails/config
"
"unite /log
"  :Unite rails/log
"
"unite /public/javascripts
"  :Unite rails/javascripts
"
"unite /public/stylesheets
"  :Unite rails/stylesheets
"
"unite bundle's commands
"  :Unite rails/bundle
"
"unite bundled gems
"  :Unite rails/bundled_gem
"
"
"== maybe ==
"
"  unite routes 
"    :Unite rails/routes
"
"  unite root
"    :Unite rails/root
"
"  unite command
"    :Unite rails/command
"      > rake db:migrate



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""






""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" unite ↑操作方法、説明↑			
"            ↓設定↓
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"設定

" 実行モードで開始する
let g:unite_enable_start_insert=0
" 入力モードで開始する
"let g:unite_enable_start_insert=1

let g:unite_source_grep_default_opts = '--color=never -Hn'

" unite.vim上でのキーマッピング
autocmd FileType unite call s:unite_my_settings()

function! s:unite_my_settings()
  " 単語単位からパス単位で削除するように変更
  imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
endfunction

"絞込みテキストを入力するごとに表示される候補の更新間隔を制御する。単位はミリ秒
let g:unite_update_time = 2000



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" [unite]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"nnoremap [unite] <Nop>
nnoremap [unite] :<C-u>Unite<Space>
nmap <Leader>f [unite]

nnoremap <C-f> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
inoremap <C-f> <ESC>:<C-u>UniteWithBufferDir -buffer-name=files file<CR>

nnoremap [unite]a   :<C-u>UniteWithBufferDir -buffer-name=files mark buffer file_mru bookmark file<CR>
nnoremap [unite]b   :<C-u>Unite mark buffer file_mru<CR>
nnoremap [unite]c   :<C-u>Unite change<CR>
nnoremap [unite]f   :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap [unite]g   :<C-u>Unite grep<CR>
nnoremap [unite]h   :<C-u>Unite history/command<CR>
nnoremap [unite]j   :<C-u>Unite jump<CR>
nnoremap [unite]l   :<C-u>Unite locate -start-insert<CR>
nnoremap [unite]m   :<C-u>Unite mapping -start-insert<CR>
nnoremap [unite]n   :<C-u>Unite neobundle<CR>
nnoremap [unite]o   :<C-u>Unite -buffer-name=outline -auto-preview outline<CR>
nnoremap [unite]p   :<C-u>Unite process -start-insert<CR>



"noremap [unite]r   :<C-u>UniteResume<CR>
noremap [unite]r   :<C-u>Unite ref/ri<CR>



nnoremap [unite]s   :<C-u>Unite history/search<CR>
nnoremap [unite]v   :<C-u>Unite output:version -start-insert<CR>
nnoremap [unite]y   :<C-u>Unite history/yank<CR>
nnoremap [unite]A   :<C-u>Unite output:autocmd<CR>
nnoremap [unite]I   :<C-u>Unite neobundle/install:!<CR>
nnoremap [unite]L   :<C-u>Unite launcher<CR>
nnoremap [unite]M   :<C-u>Unite output:messages<CR>
nnoremap [unite]N   :<C-u>Unite neobundle -input=Not<CR>
nnoremap [unite]R   :<C-u>Unite -buffer-name=register register<CR>
nnoremap [unite]S   :<C-u>Unite output:scriptnames<CR>
"}}}



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ファイル、バッファへのショートカット
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"オプション
" -auto-preview		自動でプレビューを開く
" -immediately		候補が一つしかない場合は即実行

" c-jはescとする
au FileType unite nnoremap <silent> <buffer> <c-j> <ESC><CR>

" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 最近使用したファイル一覧
noremap <silent>  ff           :<C-u>Unite file_mru -auto-preview<CR>
" 常用セット buffer と最近のfile
nnoremap <silent> <space>f     :<C-u>Unite buffer file_mru -auto-preview<CR>
" 全部乗せ
nnoremap <silent> <space>a     :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file -auto-preview<CR>

"nnoremap ,f :Unite buffer file_rec<CR>

" バッファ一覧
"noremap <silent> <space>f :<C-u>Unite buffer -auto-preview<CR>

" ファイル一覧
"相対パス
"noremap <C-???> :<C-u>Unite -buffer-name=file file<CR>
"絶対パス
"nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"noremap <silent> <C-N> :<C-u>UniteWithBufferDir -buffer-name=files file -auto-preview<CR>


" レジスタ一覧
"nnoremap <silent> <space>ur :<C-u>Unite -buffer-name=register register -auto-preview<CR>







""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vimのレジスタ履歴機能unite-history/yank - 刹那的効用
"http://d.hatena.ne.jp/leafcage/20111102/1320189817

"history/yankの有効化
let g:unite_source_history_yank_enable = 1

"削除した場合と、ヤンクして貼り付けると履歴に登録される。
nnoremap <silent> gy :<C-u>Unite history/yank<CR>
nnoremap <silent> gp :<C-u>Unite history/yank<CR>
nnoremap <silent> gd :<C-u>Unite history/yank<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Yankring.vimがやっと使えるようになった！ - Life goes on
"http://d.hatena.ne.jp/Layzie/20111013/1318438227

"unite.vimはhistory/yank sourceが使えます。


"ビジュアルモードで使うならば、これをマッピングしておく
xnoremap <silent> [unite]r d:<C-u>Unite -buffer-name=register register history/yank<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"grepを使う
"let g:unite_source_grep_command = 'jvgrep'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"unite-helpの設定
"ヘルプを検索するsource
" Execute help.
"nnoremap <C-h>  :<C-u>Unite -start-insert help<CR>
" Execute help by cursor keyword.
nnoremap <silent> g<C-h>  :<C-u>UniteWithCursorWord help<CR>

"vim テクニックバイブルp360
"nnoremap <silent> ,gs :<C-u>Unite -buffer-name=files buffer_tab file_rec file file_mru<CR>
"nnoremap <silent> sg :<C-u>Unite grep -no-quit<CR>
"nnoremap <silent> <C-h> :<C-u>Unite -start-insert help<CR>
nnoremap <silent> <C-t><C-t> :<C-u>Unite -immediately tab:no-current<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ウィンドウを上下に分割して開く
"au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
"au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')

" ウィンドウを縦に分割して開く
"au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('vsplit')
"au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('vsplit')




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"fuf → unite に乗り換えて１日目 - basyura’s blog
"http://d.hatena.ne.jp/basyura/20100908/p1

" 初期設定関数を起動する
"au FileType unite call s:unite_my_settings()
"function! s:unite_my_settings()
  " Overwrite settings.
"endfunction

"autocmd FileType unite call s:unite_my_settings()
"function! s:unite_my_settings()
"  " Overwrite settings.
"  imap <buffer> jj <Plug>(unite_insert_leave)
"  imap <buffer> <ESC> <ESC><ESC>
"  nnoremap <buffer> t G
"  startinsert
"endfunction

" 様々なショートカット
"  解説
"  '^;v'
"  これは実質;vと入力する。
"  ''で囲んで^はコマンドの開始を意味する。

" @       file_mru と組み合わせると、カレントディレクトリ以下のみに絞り込まれる。
" @@      現在のファイルのある場所以下に絞り込まれる。

" \~
" \\\@<! 
" \\ \@!

"call unite#set_substitute_pattern('file', '^@', '\=getcwd()."/*"', 1)
"call unite#set_substitute_pattern('file', '^@@', '\=fnamemodify(expand("#"), ":p:h")."/"', 2)

"call unite#set_substitute_pattern('files', '^\\', '~/*')
"call unite#set_substitute_pattern('file', '^\~', escape($HOME, '\'), -2)
"call unite#set_substitute_pattern('file', '\\\@<! ', '\\ ', -20)
"call unite#set_substitute_pattern('file', '\\ \@!', '/', -30)

"if has('win32') || has('win64')
"  call unite#set_substitute_pattern('file', '^;p', 'C:/Program Files/')
"  call unite#set_substitute_pattern('file', '^;v', '~/vimfiles/')
"else
"call unite#set_substitute_pattern('file', '^;v', '~/.vim/')
"endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"unite拡張
"unite-rails.vim - basyura’s blog
"http://d.hatena.ne.jp/basyura/20110526/p1
"rails.vim の gf と :R が便利すぎるので、これの補助ツールとして使う感じ。

"<C-x>はvim上の数値をデクリメント
"nnoremap <C-x> :Unite rails/

"unite /app/models				 	 	 :Unite rails/model
"unite /app/controllers		 	 	 :Unite rails/controller
"unite /app/views					 	 	 :Unite rails/view
"unite /app/helpers				 	 	 :Unite rails/helper
"unite /app/mailers				 	 	 :Unite rails/mailer
"unite /lib								 	 	 :Unite rails/lib
"unite /db								 	 	 :Unite rails/db
"unite /config						 	 	 :Unite rails/config
"unite /log								 	 	 :Unite rails/log
"unite /public/javascripts		 :Unite rails/javascripts
"unite /public/stylesheets		 :Unite rails/stylesheets

"== maybe ==
"  unite routes								 :Unite rails/routes
"  unite root									 :Unite rails/root
"  unite command
"    :Unite rails/command
"      > rake db:migrate
"



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" unite-neco {{{
let s:unite_source = {'name': 'neco'}

function! s:unite_source.gather_candidates(args, context)
  let necos = [
        \ "~(-'_'-) goes right",
        \ "~(-'_'-) goes right and left",
        \ "~(-'_'-) goes right quickly",
        \ "~(-'_'-) goes right then smile",
        \ "~(-'_'-)  -8(*'_'*) go right and left",
        \ "(=' .' ) ~w",
        \ ]
  return map(necos, '{
        \ "word": v:val,
        \ "source": "neco",
        \ "kind": "command",
        \ "action__command": "Neco " . v:key,
        \ }')
endfunction

"function! unite#sources#locate#define()
"  return executable('locate') ? s:unite_source : []
"endfunction
"call unite#define_source(s:unite_source)

" }}}



