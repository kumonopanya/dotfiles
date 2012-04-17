


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 使用コマンド
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

":NeoBundleInstall
":NeoBundleInstall!



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" bundle設定方法
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"プラグイン指定方法
"vim-scriptsからなら（レポジトリ名）
"NeoBundle 'repos'

"Githubからなら（ユーザー名/レポジトリ名）
"NeoBundle 'user_name/repos'
"Search - GitHub
"https://github.com/search

"githubじゃないレポジトリからは
"NeoBundle 'git://git.foo.com/repos.git'




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ファイラー unite
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"unite-grep.vimが使えました - bettamodokiのメモ
"http://d.hatena.ne.jp/bettamodoki/20110513/1305275171

"パターンを入力すると一覧でとれる 
"nnoremap <silent> <Leader>ug :Unite grep:%:-iHRn<CR>

"grepは見つかった行数を出力するように、-Hnを付けないといけません。
"let g:unite_source_grep_default_opts = '-iRHn'




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 補完
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"補完
"Vim-users.jp - Hack #208: 英語を正確に素早く入力する
"http://vim-users.jp/2011/03/hack208/
"neocomplcacheとlookコマンドに依存
"NeoBundle 'neco-look'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" リファレンス
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"追加：jqueryマニュアル
"NeoBundle 'git://github.com/soh335/vim-ref-jquery.git'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 言語別 ruby
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"NeoBundle 'vim-ruby/vim-ruby'

"Rubyで自動的にendをいれてくれる、カーソルを良い位置に移動してくれる。
"NeoBundle 'tpope/vim-endwise'

"NeoBundle 'AutoClose'
"git://github.com/vim-scripts/AutoClose.git



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"rails
"NeoBundle 'tpope/vim-rails'
"NeoBundle 'rails.vim'

"basyura/unite-rails - GitHub
"https://github.com/basyura/unite-rails
"NeoBundle 'janx/vim-rubytest'
"NeoBundle 'tpope/vim-haml'
"NeoBundle 'tpope/vim-cucumber'
"ジャンプ CTRL -]

"NeoBundle 'snipMate'

"NeoBundle 'project.tar.gz'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ruby1.8がないとエラーが出る？
"NeoBundle 'rubycomplete.vim'

"(eval):475: [BUG] terminated node (0x7fd6fe4c1f58)
"ruby 1.8.7 (2011-06-30 patchlevel 352) [x86_64-linux]

"Vim: 致命的シグナル ABRT を検知しました
"Vim: 終了しました.
"[1]    12151 abort      vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" color
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"colorschmes
"~/.vim/colors にインストール。
"~/.vim/bundle/カラー名/colors にインストール。

"NeoBundle 'user_name/repos'
"カラーピッカー ソースから色を抜き出してソートする・・・ようだ。
"NeoBundle 'pasela/unite-webcolorname'
"簡単にcolorschemeをプレビュー
"NeoBundle 'ujihisa/unite-colorscheme'

"個別カラー
"NeoBundle 'railscasts' 
"NeoBundle 'molokai' 
"NeoBundle 'billw.vim' 
"NeoBundle 'Wombat' 
"NeoBundle 'Diablo3' 
"NeoBundle 'Zenburn'
"NeoBundle 'mrkn256.vim' 
"NeoBundle 'desert-warm-256' 
"NeoBundle 'darkerdesert' 
"NeoBundle 'desert256.vim' 
"NeoBundle 'desert.vim' 
"NeoBundle 'Lucius' 



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" コメントアウト
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"[vim]Vim で言語に関係なくコメントアウト行う
"http://d.hatena.ne.jp/osyo-manga/20120106/1325815224

"NeoBundle "git://github.com/tyru/caw.vim.git"

"" コメントアウトを切り替えるマッピング例
"nmap <Leader>c <Plug>(caw:I:toggle)
"vmap <Leader>c <Plug>(caw:I:toggle)



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"[キーマッピング]
"gci	文の頭からコメントアウト
"gcI	行頭からコメントアウト
"gca	行末にコメントアウト
"gco	カーソル行の下にコメントアウト
"gcO	カーソル行の上にコメントアウト

"gco と gcO 以外はビジュアルモードでも
"マッピングされているので複数行のコメントアウトも
"スムーズに行うことが出来ます。

"詳細は 
":help caw-introduction
":help caw-keymappings
"を参照下さい。

"[対応している言語]
":help caw-supported-filetypes



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 囲む （surround）
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"doc/surround.txt at master from tpope/vim-surround - GitHub
"https://github.com/tpope/vim-surround/blob/master/doc/surround.txt



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 検索
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim-users.jp - Hack #226: 複数のキーワードを手軽にハイライトする
"http://vim-users.jp/2011/08/hack226/
"選択した単語をハイライトしてくれるプラグイン。地味に便利すぎる。キーマップを.vimrcに設定する必要がある。

"NeoBundle 'quickhl.vim'

"nmap <Space>m <Plug>(quickhl-toggle)
"xmap <Space>m <Plug>(quickhl-toggle)
"nmap <Space>M <Plug>(quickhl-reset)
"xmap <Space>M <Plug>(quickhl-reset)
"nmap <Space>j <Plug>(quickhl-match)



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 折りたたみ
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vimでコードの折りたたみ( fold )をイケてる感じにする。 - t9mdの日記
"http://d.hatena.ne.jp/t9md/20101028/1288271851
"Commit 372949f490faa34e5fd480041c48fc92a68746df to t9md/vim-foldtext - GitHub
"https://github.com/t9md/vim-foldtext/commit/372949f490faa34e5fd480041c48fc92a68746df
"NeoBundle 't9md/vim-foldtext'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 正規表現
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vimの正規表現をrubyの正規表現のように使う。。
"NeoBundle 'eregex.vim'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" コードレイアウトの自動化
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"日本語が入るとうまく整形できない。
"NeoBundle 'Align'

"日本語環境用の設定
"かなり綺麗に整形できる。
":let g:Align_xstrlen = 3



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimshell
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"30秒で MacVim に VimShell を入れる最速の方法 | ウェブル
"http://weble.org/2011/01/08/macvim-vimshell
"vimshellが便利過ぎる件 - ぷろぐらま はっくす
"http://d.hatena.ne.jp/nauthiz/20101107/1289140518

"vimテクニックバイブルp211
"vimprocディレクトリで
"(unix) no baai.
"make -f make_gcc.mak
"とコンパイルして、
"コンパイルしたファイルをautoloadにコピー

" ,is: シェルを起動
"nnoremap <silent> <Leader>is :VimShell<CR>
" ,ipy: pythonを非同期で起動
"nnoremap <silent> <Leader>ipy :VimShellInteractive python<CR>
" ,irb: irbを非同期で起動
"nnoremap <silent> <Leader>irb :VimShellInteractive irb<CR>
" ,ss: 非同期で開いたインタプリタに現在の行を評価させる
"vmap <silent> <Leader>ss :VimShellSendString<CR>
" 選択中に,ss: 非同期で開いたインタプリタに選択行を評価させる
"nnoremap <silent> <Leader>ss <S-v>:VimShellSendString<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vimproc
"let g:vimproc_dll_path = $VIMRUNTIME . '/autoload/proc.so'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 一日一回のプラグインアップデート。
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vimプラグインの管理をVundleにしてみた | cloudrider.net
"http://cloudrider.net/vim%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3%E3%81%AE%E7%AE%A1%E7%90%86%E3%82%92vundle%E3%81%AB%E3%81%97%E3%81%A6%E3%81%BF%E3%81%9F/

"if has('unix')
"    if system("uname") == "Darwin\n" | let ismac=1 | endif
"endif
 
"if has('mac') || exists('ismac')
"    if system("ls -l ~/.viminfo | sed -e 's/.* \\(.\\{2\\}\\) \\(.\\{2\\}\\) [0-9]\\{2\\}:[0-9]\\{2\\}.*/\\1\\2/'") != strftime("%b%e\n", localtime())
"        autocmd VimEnter * :NeoBundleInstall!
"        call system("touch ~/.viminfo")
"    endif
"    unlet ismac
"elseif has('unix')
"    if system("ls -l ~/.viminfo | sed -e 's/.*\\([0-9]\\{4\\}-[0-9]\\{2\\}-[0-9]\\{2\\}\\).*/\\1/'") != system("date +%Y-%m-%d")
"        autocmd VimEnter * :NeoBundleInstall!
"        call system("touch ~/.viminfo")
"    endif
"endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ファイル内の自動日時更新
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vimテクニックバイブルp236
" 記入フォーマット（デフォルト）
" Last Change:.
" と記入しておく。

" 記入フォーマット（自作）
"[Date: ]"<=動作がおかしい
":let autodate_keyword_pre="[Date"
":let autodate_keyword_post=""

":let autodate_format="%Y/%m/%d %H:%M:%S"



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" その他
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vimテクニックバイブルp60
"管理者権限で保存できる
"NeoBundle 'sudo.vim'

"vimテクニックバイブルp79
"https://github.com/taku-o/vim-ro-when-swapfound.git
"スワップファイルが見つかった時に自動的に読み取り専用ファイルで開く
"NeoBundle 'taku-o/vim-ro-when-swapfound.git'

"vimテクニックバイブルp185
"NeoBundle 'tpope/vim-repeat'
" . で前回のコマンドを繰り返せる。
" surround.vim と連携できる。

"vimテクニックバイブルp
"NeoBundle ''

"vimテクニックバイブルp
"NeoBundle ''










"NeoBundle 'motemen/git-vim'
"NeoBundle 'git-commit'
"NeoBundle 'git://github.com/mattn/zencoding-vim.git'
"NeoBundle 'hrp/EnhancedCommentify'
"NeoBundle 'vim-scripts/yanktmp.vim'
"NeoBundle 'tsaleh/vim-matchit'
"NeoBundle 'tsaleh/vim-align'
"NeoBundle 'othree/eregex.vim'

"gemでインストール後
"Rubyリファレンス
"NeoBundle 'git://github.com/thinca/vim-ref.git'
"NeoBundle 'thinca/vim-ref'
"NeoBundle 'lookupfile'
"NeoBundle 'genutils'


"探す

"便利そうだけど不明
"NeoBundle 'ZenCoding.vim'
"NeoBundle 'kana/vim-fakeclip'





"refe関連 不明
"リファレンスをインクリメンタルサーチする
"lookupfile.vim(v 1.4) (genutils.vimに依存)
"genutils.vim(v 2.4) 
"lookupfileをインストールするとエラーが表示される。




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"エラーがでるのでコメントアウト
"astashov/vim-ruby-debugger - GitHub
"https://github.com/astashov/vim-ruby-debugger
"NeoBundle 'astashov/vim-ruby-debugger'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ×NeoBundle (エラーが出るもの)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


