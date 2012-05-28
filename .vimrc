" vim:set ts=8 sts=2 sw=2 tw=0: (この行に関しては:help modelineを参照)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 履歴
"2012年1月7日（.vimrcを整理）
"2012年4月17日（githubで管理)
"2012年5月16日（keymapping.vimにキーマッピング設定を記入）

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 重要tips 基本
"* shift+8 このコマンドはカーソルの下にある単語を検索する。


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimの設定 基本
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"基本設定

" 環境設定
" 環境変数
" gvim起動時の初期フォルダ設定
" （ここにユーザーが作ったファイルが置かれる。）
"cd $HOME



"==========================================================

"RubyのOmni補完 未完成
"railsの補完ができない。

"systemにgemをインストール
"sudo apt-get install rubygems

"有効になっている拡張機能をチェックする方法
":versionコマンド
"rubyinterpは"+ruby"で有効

"vim-rubyのインストール
"sudo gem install vim-ruby
"vim-ruby-install.rb


"==========================================================





"==========================================================



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vundleとNeoBundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" プラグイン管理設定
" vundleとNeoBundle初期設定

" Vi互換モードをオフ（Vimの拡張機能を有効）
set nocompatible
filetype off

"vundleランタイムパスの設定
"Win
":set runtimepath+=$HOME\bundle\vundle
"Unix



"neobundle.vimランタイムパスの設定
"Win
":set runtimepath+=$HOME\bundle\neobundle.vim
":call neobundle#rc(expand('~/bundle'))
"Unix
":set runtimepath+=~/.vim/bundle/neobundle.vim/
":call neobundle#rc(expand('~/.vim/bundle/'))

":call neobundle#rc(expand('~/.bundle'))

if has('vim_starting')
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/.vim/bundle/'))
endif


filetype plugin on
filetype indent on

" userautoloadディレクトリへのパス設定
" ※３
":set runtimepath+=$HOME
:set runtimepath+=~/.vim
"userautoloadフォルダに入れた設定ファイルを全部読み込む
:runtime! userautoload/*.vim



"==========================================================

" NeoBundleコマンドは_vimrc設定ファイル以外に書いておくと無効になってしまう。
" (※３を参考に作った設定ファイルと_gvimrcに書いてみたが無効だった。)
" 理由は不明

"gitでインストール済みだが、
":BundleCleanコマンドで消されないために書いておく。
Bundle 'vundle'
Bundle 'Shougo/neobundle.vim'
NeoBundle 'vundle'
NeoBundle 'Shougo/neobundle.vim'

"Bundle再インストール
"bundleをバックアップ
"bundleを新しく作る。
"  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"vi起動
":BundleInstall
"vi再起動
":NeoBundleInstall
"

"==========================================================
"==========================================================
"==========================================================


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" neocomplcache
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

NeoBundle 'Shougo/neocomplcache.git'
"neocomplcache V7 以降はスニペット機能が標準添付から外れました。
"なのでneocomplcache-snippets-completeをインストールする必要があります。
NeoBundle 'Shougo/neocomplcache-snippets-complete'



"他の人のスニペットのまとめ、Pythonとrubyは結合済み
"dann/vim-neocon-snippets
"https://github.com/dann/vim-neocon-snippets



"==========================================================


"補完ができる、ハイライトがつく。
"vim-ruby/vim-ruby · GitHub
"  https://github.com/vim-ruby/vim-ruby
NeoBundle 'vim-ruby/vim-ruby'

"tpope/vim-rails
"  https://github.com/tpope/vim-rails
"エラーが出た。neocomplcacheと被っている？
"Bundle 'tpope/vim-rails'
"NeoBundle 'tpope/vim-rails'

"Vim-users.jp - Hack #209: Vim で Ruby on Rails の開発を行なう
"  http://vim-users.jp/2011/03/hack209/
"rails.vim

"Vimを使ったRuby On Rails開発環境の構築 - ナレッジエース
"  http://blog.blueblack.net/item_133

"Rails関連ファイルで文字コードをUFT-8に設定
"au User Rails* set fenc=utf-8

"==========================================================

"neocomplcache非標準のプラグイン Ruby補完
"rubyでrequire先を補完する
NeoBundle 'git://github.com/ujihisa/neco-ruby.git'



"==========================================================

"Vim-users.jp - Hack #231: Rubyで入力と出力から「その中間であるメソッド名を自動補完」する
"  http://vim-users.jp/2011/09/hack231/
"ujihisa/neco-rubymf - GitHub
"  https://github.com/ujihisa/neco-rubymf
"ruby等のメソッド補完

"gem install methodfinder
"gem install methodfinder
"gem install methodfinder
"gem install methodfinder
"gem install methodfinder

NeoBundle 'ujihisa/neco-rubymf'

"中間補完メソッド
"使い方
"1.¶ #=> 2


"==========================================================


"NeoComplCache で InsertMode に入った時に辞書とバッファをキャッシュする - basyura’s blog
"  http://d.hatena.ne.jp/basyura/20120318/p1

autocmd InsertEnter * call s:neco_pre_cache()
function! s:neco_pre_cache()
  if exists('b:neco_pre_cache')
    return
  endif
  let b:neco_pre_cache = 1
  if bufname('%') =~ g:neocomplcache_lock_buffer_name_pattern
    return
  endif
  :NeoComplCacheCachingBuffer
  :NeoComplCacheCachingDictionary
endfunction


"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" unite
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""ファイラー unite
NeoBundle 'Shougo/unite.vim.git'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" unite-tag
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"ctags と neocomplcache と unite-tag を使って関数定義箇所を開く - C++でゲームプログラミング
"  http://d.hatena.ne.jp/osyo-manga/20120205/1328368314

"NeoBundle 'tsukkee/unite-tag.git'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" unite color
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim-users.jp - Hack #188: 見た目を気軽に変更する
"  http://vim-users.jp/2010/12/hack188/

NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'ujihisa/unite-font'

"g:unite_enable_start_insert: Uniteを挿入モードで開始します。
"--"let g:unite_enable_start_insert = 1

"g:unite_enable_split_vertically: Uniteを縦分割で開始します。
"let g:unite_enable_split_vertically = 1

"ifの行: unite.vimがインストールされているときのみ以下のキーマッピングを行う。
"このように、:Uniteコマンドには複数のsourceを指定することができます。
if globpath(&rtp, 'plugin/unite.vim') != ''
  nnoremap ccv :<C-u>Unite -auto-preview colorscheme<Cr>
endif

"カラースキームをプレビューできるコマンド
":Unite -auto-preview colorscheme

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" unite その他
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"--"NeoBundle 'h1mesuke/unite-outline'

"ヘルプを検索するsourceである。
"--"NeoBundle 'tsukkee/unite-help'
"設定例:
" Execute help.
"nnoremap <C-h>  :<C-u>Unite -start-insert help<CR>
" Execute help by cursor keyword.
"nnoremap <silent> g<C-h>  :<C-u>UniteWithCursorWord help<CR>

"--"NeoBundle 'basyura/unite-rails'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimproc vimshell
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" unite.vimとvimprocがインストールされていると非同期でプラグインがアップデートできる。
" Windows7 64bitでvimshellやvimprocを使うには特別なインストール設定が必要なのでコメントアウト
"NeoBundle 'Shougo/vimshell.git'
NeoBundle 'Shougo/vimproc.git'

"コンパイルする。
"make -f make_unix.mak



"--"NeoBundle 'sudo.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimfiler
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"--"NeoBundle 'Shougo/vimfiler.git'

" vimfiler
"nnoremap <silent> <F7> :VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit<CR>
"let g:vimfiler_as_default_explorer = 1
"let g:vimfiler_safe_mode_by_default = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" savevers.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"バックアップ履歴保存
NeoBundle 'savevers.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" quickrun
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

NeoBundle 'thinca/vim-quickrun'

"==========================================================

" コンフィグを全クリア
let g:quickrun_config = {}

"vimテクニックバイブルp209
"デフォルト設定
"vsplit 縦分割
"into カーソルをもとのバッファに戻す。
let g:quickrun_config._={
  \'vsplit': '' ,
  \'into': '0' ,
  \}

"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vim-ref
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

NeoBundle 'thinca/vim-ref'
"thinca/vim-ref
"  https://github.com/thinca/vim-ref

"==========================================================

"let g:ref_refe_cmd = '~/rubyrefm/refe-1_9_2'

" vimprocをインストールしてない場合は0を指定
"let g:ref_use_vimproc = 0   

"操作例
":Unite ref/perldoc
":Unite ref/phpmanual

"==========================================================

"Uniteを使ってriを検索できるvim-ref-riというプラグインを作った - SELECT * FROM life;
"http://d.hatena.ne.jp/yuku_t/20120429/1335628327

NeoBundle 'taka84u9/vim-ref-ri.git'

"操作例
"vim-ref
"  :Ref ri Net::HTTP

"Unite.vim
"  :Unite ref/ri

"""unite.vim設定ファイル
"""nmap <Leader>f [unite]
"""noremap [unite]r   :<C-u>Unite ref/ri<CR>

"==========================================================

"ref.vim に webdict と言うソースを追加した - 永遠に未完成
"http://d.hatena.ne.jp/thinca/20120512/1336761779#c

let g:ref_source_webdict_sites = {
\   'wiktionary': {
\     'url': 'http://ja.wiktionary.org/wiki/%s',
\     'keyword_encoding': 'utf-8',
\     'cache': 1,
\   },
\   'wikipedia:ja':{
\     'url': 'http://ja.wikipedia.org/wiki/%s',
\     'keyword_encoding': 'utf-8',
\     'cache': 1,
\    },
\ }
" 出力に対するフィルタ。最初の数行を削除している。
function! g:ref_source_webdict_sites.wiktionary.filter(output)
  return join(split(a:output, "\n")[18 :], "\n")
endfunction

let g:ref_source_webdict_sites.default = 'wikipedia:ja'

"操作例
""":Ref webdict wiktionary 検索キーワード
""":Ref webdict 検索キーワード

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" NERDTreeT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"NERDTree上からディレクトリ全体をfind + grep
"とある vim の機能拡張（プラグイン）-- NERDTree | とある港人の記憶装置
"  http://www.opalex.net/drupal/content/%E3%81%A8%E3%81%82%E3%82%8B-vim-%E3%81%AE%E6%A9%9F%E8%83%BD%E6%8B%A1%E5%BC%B5%EF%BC%88%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3%EF%BC%89-nerdtree

"scrooloose/nerdtree · GitHub
"  https://github.com/scrooloose/nerdtree
NeoBundle 'scrooloose/nerdtree.git'

" map <silent> <c-e>   :NERDTreeToggle<CR>
" lmap <silent> <c-e>  :NERDTreeToggle<CR>
nmap <silent> <c-e>      :NERDTreeToggle<CR>
vmap <silent> <c-e> <Esc>:NERDTreeToggle<CR>
omap <silent> <c-e>      :NERDTreeToggle<CR>
imap <silent> <c-e> <Esc>:NERDTreeToggle<CR>
cmap <silent> <c-e> <C-u>:NERDTreeToggle<CR>

"==========================================================

"NERDTreeのプラグイン
"grep_menuitem.vim
"  https://gist.github.com/414375

"==========================================================

"NERDTree上からackを実行するvimプラグインを書いた(ディレクトリをfind+grep) - へたれエンジニア日記 ver.2
"  http://d.hatena.ne.jp/toritori0318/20100710/1278776012
"toritori0318/vim-nerdtree-plugin - GitHub
"  https://github.com/toritori0318/vim-nerdtree-plugin/

"NeoBundle 'toritori0318/vim-nerdtree-plugin'
NeoBundle 'git://github.com/toritori0318/vim-nerdtree-plugin.git'

"* ack_menuitem.vim
"NERDTreeメニュー（g）からackを実行するプラグインです
"* quickrun_keymap.vim
"NERDTreeのキーマップ（rr）からquickrunを実行するプラグインです
"* callex_keymap.vim
"NERDTreeのキーマップ（ca）からファイルに関連づいているアプリケーションを実行するプラグインです
"* callsh_keymap.vim
"NERDTreeのキーマップ（sh）から指定したディレクトリでターミナル（iTerm2）を開くプラグインです
"* callfinder_keymap.vim
"NERDTreeのキーマップ（fd）から指定したファイル／ディレクトリでFinderを開くプラグインです

"==========================================================

"find + grep
NeoBundle 'ack.vim'

"# 基本的な使い方
""":Ack [options] {pattern} [{directory}]

"# hogeという文字を検索するときは
":Ack hoge

"==========================================================

"使わない、うまく動かなかった。
"NERDCommenter
"="NeoBundle 'scrooloose/nerdcommenter.git'

"let NERDSpaceDelims = 1
"nmap <Leader><Leader> <Plug>NERDCommenterToggle
"vmap <Leader>c <Plug>NERDCommenterToggle

"<Leader>xでコメントをトグル(NERD_commenter.vim)
"map <Leader>x ,c<space>
"未対応ファイルタイプのエラーメッセージを表示しない
"let NERDShutUp=1

"==========================================================

"使い方わからず
"NeoBundle 'NERD_tree-and-ack'



"==========================================================
"==========================================================
"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vim-surround
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

NeoBundle 'tpope/vim-surround'

"vim plugin （プラグイン） surround.vim の使い方メモ : Serendip - Webデザイン・プログラミング
"  http://www.serendip.ws/archives/997

"Vim-users.jp - Hack #227: surround.vim の囲むルールを独自に拡張する
"  http://vim-users.jp/2011/09/hack227/

"==========================================================

"プラグインを利用したsurroundの拡張
NeoBundle 't9md/vim-surround_custom_mapping'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ファイルでシンタックスハイライト・インデントを有効化
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufRead,BufNewFile *.erb set filetype=eruby.html




"==========================================================
"==========================================================
"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimdoc-ja
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

NeoBundle 'vim-jp/vimdoc-ja.git'

":helptags /home/hi/.vim/bundle/vimdoc-ja/doc

"ヘルプ検索の日本語の優先順位を上げる
"日本語ヘルプファイルインストール後に
set helplang=ja
"set helplang=ja,en


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vim-fugitive
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vim用のgitラッパープラグイン、ステータスラインでも利用。
NeoBundle 'tpope/vim-fugitive'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" autodate.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Bundle 'autodate.vim'	" ファイル内の自動日時更新

"==========================================================
"==========================================================
"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" リファクタリング.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"VimでRubyをリファクタリング
"2012-03-21 - longicornの日記
"  http://d.hatena.ne.jp/longicorn/20120321

"Vim-ruby-refactoring - Vim-ruby-refactoring - Despo - Relish
"  https://www.relishapp.com/despo/vim-ruby-refactoring/docs

NeoBundle 'ecomba/vim-ruby-refactoring'
"デフォルトのkey mapping
let g:ruby_refactoring_map_keys=0

"「%」による対応括弧へのカーソル移動機能を拡張
NeoBundle 'matchit.zip'
"matchit.vim : 「%」による対応括弧へのカーソル移動機能を拡張 — 名無しのvim使い
"  http://nanasi.jp/articles/vim/matchit_vim.html



"==========================================================
"==========================================================
"==========================================================


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" JavaScript 文法チェック 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"flymake rubyのシンタックスチェック、設定はruby.vimに。
NeoBundle 'errormarker.vim'

"文法チェック
NeoBundle 'JavaScript-syntax'

"インデント
NeoBundle 'pangloss/vim-javascript'

"jslint.vimで正しいJavaScriptを書く | monoの開発ブログ
"  http://blog.monoweb.info/article/2011042918.html
NeoBundle 'basyura/jslint.vim'

"以下の記述でファイル保存時にJSLintのチェックが動きます。
" jslint.vim
function! s:javascript_filetype_settings()
  autocmd BufLeave     <buffer> call jslint#clear()
  autocmd BufWritePost <buffer> call jslint#check()
  autocmd CursorMoved  <buffer> call jslint#message()
endfunction
autocmd FileType javascript call s:javascript_filetype_settings()


"==========================================================

"VimでCoffeeScriptをリアルタイムプレビュー - Cside::StudyMemo - Csideグループ
"  http://cside.g.hatena.ne.jp/Cside/20120112/p1
NeoBundle 'kchmck/vim-coffee-script'

autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufWritePost *.coffee :CoffeeCompile watch vert
autocmd BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!



"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" Rspecテスト
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Rspecファイル実行
"エラー場所を示してくれる。
"skwp/vim-rspec · GitHub
"  https://github.com/skwp/vim-rspec
NeoBundle 'skwp/vim-rspec'

NeoBundle 'tpope/vim-cucumber'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" HTML
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

NeoBundle 'tpope/vim-haml'

"==========================================================


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" バッファ
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"QuickBuf : 軽量バッファマネージャー — 名無しのvim使い
"  http://nanasi.jp/articles/vim/qbuf_vim.html

"NeoBundle 'QuickBuf'

" j	カーソルを下に移動する
" k	カーソルを上に移動する
" <Enter>	選択したバッファを表示する
" u	バッファをプレビュー表示する
" d	選択したバッファをアンロードする。「bdelete」コマンドと同じ。
" w	選択したバッファをアンロードする。「bwipeout」コマンドと同じ。
" l	押すたびに一覧を「buflisted」「nobuflisted」のリストに切り替える
" <ESC>	バッファ一覧を閉じる
"
"QuickBuller.vim
":let g:qb_hotkey = "<F6>"
":let g:qb_hotkey = "''"

"==========================================================


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" コメント
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"NeoBundle 'tomtom/tcomment_vim.git'

"カレント行のコメントをトグルする
"  ノーマルモードで gcc と入力します。

"選択した部分のコメントをトグルする
"  ビジュアルモードで gc と入力します。
"複数行のコメントや部分的なコメントをトグルすることができます。


"==========================================================



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" smartchr.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim-users.jp - Hack #131: Rubyで#{をラクに入力する
"  http://vim-users.jp/2010/03/hack131/
"smartchr.vim入れた - 物置き
"  http://d.hatena.ne.jp/ampmmn/20080925/1222338972

"Ruby用の設定をこちらに設定を書いた。
"~/.vim/ftplugin/ruby/ujihisa.vim

NeoBundle 'kana/vim-smartchr'

"==========================================================
"==========================================================
"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" python 構文チェック
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"pythonの構文チェック1
"nvie/vim-flake8 · GitHub
"  https://github.com/nvie/vim-flake8

"26 « 2月 « 2012 « wp.krks.net
"  http://wp.krks.net/2012/02/26/
NeoBundle 'nvie/vim-flake8'
"インストールが正常に行くと、F6を実行するとエラーを表示してくれる。

"書きこむたびに呼び出している
"autocmd BufWritePost *.py call Flake8()

"無視するエラー
"let g:flake8_ignore="E501"
"let g:flake8_ignore="E501,W293"

"This plugin goes well together with the following plugin:
"このプラグインは以下のプラグインと一緒に使えます
"PyUnit (unit test helper under <F8> and <F9>)

"==========================================================

"pythonの構文チェック2

"Hashnote - Vimを最強のPython IDEにする
"  http://hashnote.net/2011/12/7/12/

NeoBundle 'mitechie/pyflakes-pathogen'

"QuickFixを利用するのですがこれが邪魔な場合は
"以下の設定を VIM/ftplugin/python.vim に追加すればいいです:
"let pyflakes_use_quickfix = 0

"不向き
"NeoBundle 'kevinw/pyflakes-vim.git'

"==========================================================

"pythonのTDD環境
"easy_installを置き換えるツール。
"pipをインストール。
"easy_install pip
"パッケージマネージャでもおk。

"自分の環境にインストールしてる package の一覧取得
"pip freeze
"pip でパッケージをインストールするには、
"pip install パッケージ名
"アンインストールするには、
"pip uninstall パッケージ名

"NeoBundle 'vim-makegreen'
"NeoBundle 'reinh/vim-makegreen'
"NeoBundle 'lambdalisue/nose.vim'


"==========================================================

"リファクタリング
"ropeを使用する。
"ropeのサイト。
"rope python refactoring library...
"  http://rope.sourceforge.net/index.html

"ropevim, rope in vim
"  http://rope.sourceforge.net/ropevim.html

"sudo pip install rope ropemode
NeoBundle 'sontek/rope-vim'

" 実際の使い方としては変数名の変更を例に説明すると
"
" 変更したい変数名にカーソルを合わせる
" :RopeRename を実行する（もしくは C-C rr ）
" プロジェクトのルートディレクトリについて聞かれるので入力する
" （おそらく）Ropeのファイルが見つかりませんがつくりますか？的なことが聞かれるので Y と答える
" 残りは支持に従えばプロジェクト内の変数名を自動的に書き換えてくれる
" ropevim にはまだまだ強力な機能が沢山あるので調べてみましょう



"==========================================================

"neocomplcache を利用することを前提

"pythoncomplete - Python Omni Completion : vim online
"  http://www.vim.org/scripts/script.php?script_id=1542
"---"NeoBundle 'pythoncomplete'
"NeoBundle 'lambdalisue/vim-django-support`

"==========================================================
"==========================================================
"==========================================================


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" Python インデント タブ
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vimでPython用の環境を作ってみる | OKEREKE-RL
"  http://room6933.com/blog/2011/11/30/vimrc_for_python/
"vim-indent-guides/doc/indent_guides.txt at master · nathanaelkane/vim-indent-guides · GitHub
"  https://github.com/nathanaelkane/vim-indent-guides/blob/master/doc/indent_guides.txt


"インデントを色付けするプラグイン
NeoBundle 'nathanaelkane/vim-indent-guides'

"vim立ち上げ時に自動的にvim-indent-guidesをオンにする
"Default: 0. Values: 0 or 1.
"""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 0
"""""""""""""""""""""""""""""

"Use this option to control how many indent levels to display guides for.
"Default: 30. Values: integer.
"let g:indent_guides_indent_levels = 30


"set background=dark
"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=darkgrey

"自動的に色付け GUIのみ
let g:indent_guides_auto_colors = 0

"ctermbg
"1  赤
"2  緑
"3  土色
"4  青色

"1段階目と2段階目のインデントの色のインデントの色
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   guibg=black    ctermbg= green
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  guibg=darkgrey ctermbg= Magenta

"色の変化の幅（？）。パーセンテージらしい
"無効？
"let g:indent_guides_color_change_percent = 100

"インデントの色付け幅
"0ならタブ部分をすべて色付ける。
"Default: 0. Values: between 0 and |shiftwidth|.
let g:indent_guides_guide_size = 1

"Use this option to control whether the plugin considers spaces as indention.
"1 スペースもインデントとする。
"0 スペースをインデントとして認めない。
"Default: 1. Values: 0 or 1.
let g:indent_guides_space_guides = 1

"Use this option to control which indent level to start showing guides from.
"インデントを開始する深さ
"Default: 1. Values: between 1 and g:|indent_guides_indent_levels|.
let g:indent_guides_start_level = 2



"==========================================================



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" yankring
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

NeoBundle 'chrismetcalf/vim-yankring.git'
"vim-yankring/doc/yankring.txt at master · chrismetcalf/vim-yankring · GitHub
"  https://github.com/chrismetcalf/vim-yankring/blob/master/doc/yankring.txt

let g:yankring_history_dir = '$HOME'
let g:yankring_history_file = '.yankring_history'

"ノーマルモード時の「p」コマンドでペーストを実行した後、
"・Ctrl-Pを入力すると、より古い履歴と
"・Ctrl-Nを入力すると、より新しい履歴と
"ペーストで貼付けたテキストが置き換えられます。



"YankRing.vim : ヤンクの履歴を管理し、順々に参照、出力できるようにする — 名無しのvim使い
"http://nanasi.jp/articles/vim/yankring_vim.html

"記録する履歴の最大数の設定です。
"デフォルトは30
"人間の短期記憶力は平均7なので、
let g:yankring_max_history = 7




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ????
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"NeoBundle 'janx/vim-rubytest'

"let g:rubytest_cmd_spec = "spec %p"
"let g:rubytest_cmd_example = "spec %p -l %c"
"let g:rubytest_in_quickfix = 1




"==========================================================


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" gundo 詳細なundo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"NeoBundle 'sjl/gundo.vim'

"gundo.vimが超便利なのとvimのアンドゥツリーについて | uuu
"  http://uu59.blog103.fc2.com/blog-entry-7.html

"nnoremap <F5> :GundoToggle<CR>

"==========================================================


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" shadow.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"CoffeeScriptを保存すると勝手にjsを作ってほしい
"Markdownを保存すると勝手にmarkdownをつくってほしい
"それを実現するのがshadow.vim

"ujihisa/shadow.vim · GitHub
"  https://github.com/ujihisa/shadow.vim
"NeoBundle 'ujihisa/shadow.vim'

"let g:shadow_debug = 1




"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vim-powerline ステータスライン
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

NeoBundle 'Lokaltog/vim-powerline'

" 設定
" userautoload/statusline.vim

"==========================================================

" located in autoload/Powerline/Colorschemes/.
"緑系等
"let g:Powerline_colorscheme="default"
"青系等
let g:Powerline_colorscheme="skwp"

"==========================================================

" located in autoload/Powerline/Themes/.
"挿入、ビジュアル時に変化なし
"let g:Powerline_theme="default"
"let g:Powerline_theme="skwp"





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" taglist.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Taglist プラグインがヤバい件 - @sugamasao.blog.title 
"  http://d.hatena.ne.jp/seiunsky/20080503/1209841493

"パッケージマネージャから
"Exuberant Ctagsをインストール

NeoBundle 'rgo/taglist.vim'

"右に開く。
"let Tlist_Use_Right_Window = 1
"画面が狭い場合はこれを使う。
let Tlist_WinWidth = 40

"==========================================================

"JavaScript用 taglistはJavaScriptで崩れる（未確認）。
"  NeoBundle 'taglist-plus.vim'

"==========================================================

"ctagsを利用するSource Explorer(srcexpl.vim)がすごく便利 - Guyon Diary
"  http://d.hatena.ne.jp/guyon/20080409/1207737955

NeoBundle 'Source-Explorer-srcexpl.vim'

"自動でプレビューを表示する。
"TODO:うざくなってきたら手動にする。
"またはソースを追う時だけ自動に変更する。
let g:SrcExpl_RefreshTime   = 1

"プレビューウインドウの高さ
let g:SrcExpl_WinHeight     = 9

"tagsは自動で作成する
let g:SrcExpl_UpdateTags    = 1

"マッピング
"手動表示のMAP(#スペースに割当てる場合。)
"let g:SrcExpl_RefreshMapKey = "<Space>"
"戻る機能のMAP(#ノーマルモードで動作する)
"let g:SrcExpl_GoBackMapKey  = "<C-b>"



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"tagbar/doc/tagbar.txt at master · majutsushi/tagbar · GitHub
"  https://github.com/majutsushi/tagbar/blob/master/doc/tagbar.txt

"Home · majutsushi/tagbar Wiki
"Support for additional filetypes
"  https://github.com/majutsushi/tagbar/wiki

NeoBundle 'majutsushi/tagbar'
Bundle 'majutsushi/tagbar'

"Ctags-like tag generator for CoffeeScript
"lukaszkorecki/CoffeeTags
"  https://github.com/lukaszkorecki/CoffeeTags


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ctags Setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:set tags=tags
":set tags+=./tags,../tags,../../tags
":set tags+=~/tags/cpp.tags

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ハイライト
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim-users.jp - Hack #226: 複数のキーワードを手軽にハイライトする
"  http://vim-users.jp/2011/08/hack226/

"キーワードを複数以上ハイライトする。
"quickhl.vim
"quickhl.vim
"quickhl.vim

"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ハイライト
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"NeoBundle 'othree/html5.vim'
"NeoBundle 'html5.vim'

"vimのシンタックスハイライトをHTML5にも適用する - 鉄屑置き場
"  http://d.hatena.ne.jp/ZYTH/20110921/1316638723

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 文法チェック
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Syntastic というシンタックスチェックプラグインが凄そう - Heavens hell
"  http://d.hatena.ne.jp/heavenshell/20120106/1325866974

"scrooloose/syntastic · GitHub
"  https://github.com/scrooloose/syntastic
"""""NeoBundle 'scrooloose/syntastic.git'
"syntastic/doc/syntastic.txt at master · scrooloose/syntastic · GitHub
"  https://github.com/scrooloose/syntastic/blob/master/doc/syntastic.txt

"適用言語
"At the time of this writing, syntax checking plugins exist for applescript,
"c, coffee, cpp, css, cucumber, cuda, docbk, erlang, eruby, fortran,
"gentoo_metadata, go, haml, haskell, html, javascript, json, less, lua,
"matlab, perl, php, puppet, python, rst, ruby, sass/scss, sh, tcl, tex,
"vala, xhtml, xml, xslt, yaml, zpt

"Python の場合は PyFlakes でチェックして欲しくて、
"Syntastic ではチェックして欲しくない。

"let g:syntastic_mode_map = { 'mode': 'active',
"  \ 'active_filetypes': ['html', 'perl'],
"  \ 'passive_filetypes': ['php'] }

"active_filetypes
"自動でチェックして欲しいファイルタイプ

"passive_filetypes
"明示的に :SyntasticCheck を呼ぶとチェックするような形になる。



"==========================================================

"hail2u/vim-css3-syntax · GitHub
"  https://github.com/hail2u/vim-css3-syntax

NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'css_color.vim'



"==========================================================



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 新たなる整列プラグイン
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"h1mesuke/vim-alignta
"https://github.com/h1mesuke/vim-alignta

NeoBundle 'h1mesuke/vim-alignta.git'

"操作方法はuserautoloadディレクトリに置いた。


"==========================================================

"old
"Bundle 'Align.vim'
"エラーが出る。

"vim-scripts/Align.vim
"  https://github.com/vim-scripts/Align.vim
"NeoBundle 'vim-scripts/Align.vim.git'



"==========================================================





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" タグを自動挿入
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" タグを自動挿入1
"HTML の閉じタグを自動挿入する
NeoBundle'closetag.vim'

"閉じタグの欲しいところにカーソルを持っていき、 
"insertモードで、
"Ctrl-_
"を入力します。

"入力個所の後ろに閉じタグがあっても、 
"気にせず、閉じタグを挿入されてしまいます。

":let g:closetag_html_style=1
"au Filetype html,xml,xsl,ant source $VIMRUNTIME/macros/closetag.vim



"==========================================================
" タグを自動挿入2
"xmledit : XML、HTML、SGMLドキュメントのタグ編集操作サポートプラグイン
"http://nanasi.jp/articles/vim/xml-plugin.html

"NeoBundle 'xmledit'



"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" Haskell
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"シナプティックパッケージマネージャから
"ghc
"haskell-platform 
"をインストールしておく。

"==========================================================

"Vim の開発環境
"  http://www.slideshare.net/eagletmt/vim-13092108

"vimprocをインストールしておく。

"cabal =Haskellのパッケージマネージャ
"cabalコマンドの使い方 - あどけない話
"  http://d.hatena.ne.jp/kazu-yamamoto/20081027/1225082163

"cabal update
"cabal install cabal-install

"ghc-modをインストール。
"cabal install ghc-mod

NeoBundle 'eagletmt/ghcmod-vim'

":GhcModCheck 
"・GhcModCheckコマンドで GHC からのコンパイルエラー
"・警告 を QuickFix に表示 コンパイルエラー
"・警告がある場合は自動的に QuickFix を開く

":GhcModCheckAsync 
":GhcModCheckAsync コマンドは :GhcModCheck を (疑似)
" 非同期 的に実行 ⇒ 保存時に自動的にチェックしてもストレスが少ない！

":GhcModLint 
"同様に :GhcModLint コマンドで
"HLint からの提案を QuickFix に表示
"非同期版の :GhcModLintAsnyc、
"非同期的に :GhcModCheck と :GhcModLint の両方を行う :GhcModCheckAndLintAsync も

":GhcModType 
"カーソル下の型を表示。
"型を表示している部分はハイライトされる。
"ハイライトは :GhcModTypeClear コマンドで消す。
"式 パターン 束縛 の型を表示できる 

":GhcModType の使い道 
"コードリーディング時のサポートに なかなか型が合わない
"↓
"とりあえず undefined を書いてコンパイルを通して型を見る

"==========================================================

"neco-ghc
"オムニ補完を行う関数
"necoghc#omnifunc()を提供するプラグイン。
"インポートするモジュール名の補完
"インポートしているモジュールを考慮した補完
"LANGUAGE プラグマの補完
"OPTIONS GHC プラグマの補完

"neco-ghc の導入
"  https://github.com/ujihisa/neco-ghc
NeoBundle 'ujihisa/neco-ghc'

"オムニ補完 
"Haskell のファイルを開いているバッファで
"オムニ補完の関数をnecoghc#omnifunc に設定

autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
"インサートモードで <C-x><C-o> で補完できる
"自動補完 neocomplcache を導入することで自動補完が可能

"==========================================================

"unite-haddock
"  https://github.com/eagletmt/unite-haddock

"unite.vim のインターフェイスで、
"インストール済みのモジュール名の一覧から絞り込んで
"選択してドキュメントをブラウザを開く
NeoBundle 'eagletmt/unite-haddock'

":Unite haddock
"インストール済みのモジュール一覧を表示
"そこからモジュールを選択し、
"ローカルのドキュメントを開く (デフォルト) (browse local)
"リモート (Hackage) のドキュメントを開く (browse remote)

"==========================================================

":Unite hoogle Hoogle をインストールしてあると、
":Unite hoogle でHoogle による検索結果から
"関数や型のドキュメントを開くことが できる

"Hoogle の導入
"cabal install hoogle
"hoogle data default
"hoogle data vector
"    vector.hoo を作成
"hoogle combine *.hoo
"   *.hoo をまとめて default.hoo を作成

"==========================================================

"Vim-users.jp - Hack #241: Haskellで使いたい関数を使ってからそのモジュールをimportする
"  http://vim-users.jp/2011/12/hack241/

"==========================================================



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"==========================================================

"" original repos on github
"NeoBundle 'vim-jp/vimdoc-ja'
"NeoBundle 'corntrace/bufexplorer'
"NeoBundle 'hrp/EnhancedCommentify'

"NeoBundle 'mattn/webapi-vim'
"NeoBundle 'mattn/zencoding-vim'
"NeoBundle 'mileszs/ack.vim'
"NeoBundle 'msanders/cocoa.vim'
"NeoBundle 'plasticboy/vim-markdown'

"NeoBundle 'thinca/vim-qfreplace'
"NeoBundle 'thinca/vim-unite-history'
"NeoBundle 'thinca/vim-openbuf'
"NeoBundle 'tpope/vim-cucumber'
"NeoBundle 'tpope/vim-endwise'
"NeoBundle 'tpope/vim-haml'

"NeoBundle 'tpope/vim-unimpaired'
"NeoBundle 'tpope/vim-abolish'
"NeoBundle 'tsaleh/vim-matchit'
"NeoBundle 'taku-o/vim-toggle'

"NeoBundle 'ujihisa/unite-locate'
"NeoBundle 'ujihisa/unite-gem'
"NeoBundle 'ujihisa/unite-rake'

"NeoBundle 'tacroe/unite-mark'
"NeoBundle 'sgur/unite-qf'
"NeoBundle 'choplin/unite-vim_hacks'
"NeoBundle 'koron/chalice'
"NeoBundle 'tyru/open-browser.vim'

"NeoBundle 'kana/vim-textobj-user'
"NeoBundle 'kana/vim-textobj-indent'

"NeoBundle 'tsukkee/unite-tag'

"NeoBundle 'bitc/vim-bad-whitespace'
"NeoBundle 'petdance/vim-perl'
"NeoBundle 'pasela/unite-webcolorname'



"" vim-scripts repos
"NeoBundle 'vim-scripts/JavaDecompiler.vim'
"NeoBundle 'vim-scripts/SQLUtilities'
"NeoBundle 'vim-scripts/svn-diff.vim'
"NeoBundle 'vim-scripts/yanktmp.vim'
"NeoBundle 'vim-scripts/perlcritic-compiler-script'



"==========================================================

"NeoBundle ''
"NeoBundle ''
"NeoBundle ''
"NeoBundle ''
"NeoBundle ''
"NeoBundle ''
"NeoBundle ''
"NeoBundle ''
"NeoBundle ''
"NeoBundle ''
"NeoBundle ''
"NeoBundle ''
"NeoBundle ''
"NeoBundle ''
"NeoBundle ''
"NeoBundle ''
"NeoBundle ''
"NeoBundle ''


"==========================================================
"==========================================================
"==========================================================
"==========================================================
"==========================================================



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" colorschme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim-users.jp - Hack #64: 256色ターミナルでVimを使用する
"  http://vim-users.jp/2009/08/hack64/

"NeoBundle 'CSApprox'
"CSApprox.vimの使い方
":colorscheme {color_name}を使う。
"autocmdでフックをかけているので、ColorSchemeが自動的に変換され、Vimに適用されます。

"==========================================================

"Vim-users.jp - Hack #64: 256色ターミナルでVimを使用する
"http://vim-users.jp/2009/08/hack64/


"==========================================================



"==========================================================



"==========================================================



"==========================================================


"colorscheme wombat256
"colorscheme molokai
"colorscheme desert256
"colorscheme koehler
"colorscheme railscasts3



"==========================================================



"TextMate originally
"molokai - A port of the monokai scheme for TextMate : vim online
"  http://www.vim.org/scripts/script.php?script_id=2340
"="NeoBundle 'molokai'
"="NeoBundle 'Lucius'

"NeoBundle 'billw.vim'
"NeoBundle 'darkerdesert'
"NeoBundle 'desert256.vim'
"NeoBundle 'desert-warm-256'
"NeoBundle 'Diablo3'
"NeoBundle 'dw_colors'

"NeoBundle 'mrkn256.vim'
"="NeoBundle 'Wombat'
"NeoBundle 'Zenburn'

"="Bundle 'railscasts'

"Bundle 'delek.vim'
"="Bundle 'desert.vim'
"Bundle 'torte.vim'
"Bundle 'darkBlue'
"Bundle 'darkblue2.vim'
"Bundle 'tir_black'

"明るいカラースキーム おすすめ
"Bundle 'newspaper.vim'
"Bundle 'pyte'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 文字コード指定
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf-8
set fileformats=unix,dos,mac

"set fileencoding=utf-8
"set fileencodings=iso-2022-jp,euc-jp,utf-8,ucs2le,ucs-2
"set fileencodings=sjis,iso-2022-jp,euc-jp

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vimshellエンコーディングエラー対策
"Windows7ターミナル内はsjisなので
"set termencoding=sjis
scriptencoding utf-8

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"kaoriya ｇVimメニューの文字化け対策
if has('win32')||has('win64')
	source $VIMRUNTIME/delmenu.vim
	set langmenu=ja_jp.utf-8
	source $VIMRUNTIME/menu.vim
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimの設定 基本
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"行番号の表示
set number

"モード表示
set showmode

"タイトル表示
set title

"ルーラー表示
" Display the cursor position on the last line of the screen or in the status
" line of a window
" 画面最下行にルーラーを表示する
set ruler

"キー入力コマンド表示
set showcmd



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"history履歴
set history=1000000

"undo履歴
set undolevels=1000000



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vim上でマウスが使える
"遠隔操作時につかう。
"画面分割の広さをマウスで変えられる。
set mouse=a

"puttyでマウスを使う
"puttyでの screen対応
"この設定を使うと補完候補をタブキーで選べなくなる
"set ttymouse=xterm2




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"自動インデント
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
" 移動コマンドを使ったとき、行頭に移動しない
set nostartofline

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
" バッファが変更されているとき、コマンドをエラーにするのでなく、保存する
" かどうか確認を求める
"変更を "無題" に保存しますか?
"はい([Y]), いいえ((N)), キャンセル((C)):
"set confirm

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
" コマンドラインの高さを2行に
set cmdheight=2




" Use visual bell instead of beeping when doing something wrong
" ビープの代わりにビジュアルベル（画面フラッシュ）を使う
set visualbell

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
" そしてビジュアルベルも無効化する
set t_vb=



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 折り返し。
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"wrap 画面端に来たら折り返す。
set wrap
"nowrap 長くても折り返さない。
"set nowrap

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" タブ文字
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"bambooflow Note - linux/vim/拡張子でタブ幅を変更
"  http://www10.atwiki.jp/bambooflow/pages/300.html


".c, .cpp, .hでタブ幅を4に変更
autocmd BufNewFile,BufRead *.c    set tabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.cpp  set tabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.h    set tabstop=4 shiftwidth=4

"autocmd BufNewFile,BufRead *.js   set filetype=javascript




"ファイルタイプを自動判別してインデントを指定する
"if has("autocmd")
"    " ファイルタイプ別インデント、プラグインを有効にする
"    filetype plugin indent on
"    " カーソル位置を記憶する
"    autocmd BufReadPost *
"        \ if line("'\"") > 0 && line("'\"") <= line("$") |
"        \   exe "normal g`\"" |
"        \ endif
"endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" タブ文字 old
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Listモード (訳注: オプション 'list' がオンのとき) に使われる文字を設定する。
" タブ文字を CTRL-I で表示し、行末に $ で表示する。
"【Vim】タブ、空白、改行を可視化する - blog.remora.cx
"  http://blog.remora.cx/2011/04/show-invisible-spaces-in-vim.html

"Vimで心地良い自動インデント設定を書くためのポイント9個 - TIM Labs
"  http://labs.timedia.co.jp/2011/04/9-points-to-customize-automatic-indentation-in-vim.html

 " Allow backspacing over autoindent, line breaks and start of insert action
 " オートインデント、改行、インサートモード開始直後にバックスペースキーで
 " できるようにする。

" バックスペースキーで削除できるものを指定
" indent  : 行頭の空白、オートインデントの空白文字
" eol     : 改行
" start   : 挿入モード開始位置より手前の文字
set backspace=indent,eol,start

  " バックスペースでインデントや改行を削除できるようにする
set backspace=2

"ファイル読み込み時にタブの展開する文字「幅」を設定
"set tabstop=2
"autoindent時等に挿入されるタブの幅
"set shiftwidth=2
"キーボードで<Tab>キーを押した時に挿入される空白の量、0の場合には挿入されるのは'tabstop'で指定した量
"set softtabstop=0

"expandtabならば、タブ文字をスペースに変換。
"noexpandtabならば、スペースをタブ文字に変換。
"set expandtab
"set noexpandtab


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"改行文字、タブ文字の表示
" for set list {{{
" Use the same symbols as TextMate for tabstops and EOLs
"try
  "set listchars=tab:▸\ ,eol:¬
"  set listchars=tab:»\ ,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
"  set list
"catch
"endtry

"set wrap linebreak nolist
" cf http://vimcasts.org/episodes/soft-wrapping-text/
"command! Wrap set wrap linebreak nolist
"}}}

"set list
"set nolist

"set listchars+=tab:>_
"set listchars=tab:>-,extends:<,trail:-,eol:<





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 前回開いた編集個所を表示する
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"au BufWritePost * mkview
"QuickFix で衝突エラー
"autocmd BufReadPost * loadview
"↓↓↓
"----------------------------------------
" Vimスクリプト
"----------------------------------------
""""""""""""""""""""""""""""""
"ファイルを開いたら前回のカーソル位置へ移動
""""""""""""""""""""""""""""""
augroup vimrcEx
  autocmd!
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line('$') |
    \   exe "normal! g`\"" |
    \ endif
augroup END

"前回参照行
"autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 全角スペースを視覚化
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"コメント以外で全角スペースを指定しているので、scriptencodingと、
"このファイルのエンコードが一致するよう注意！
"強調表示されない場合、ここでscriptencodingを指定するとうまくいく事があります。

function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=lightblue gui=underline guifg=darkgrey
  "全角スペースを明示的に表示する
  silent! match ZenkakuSpace /　/
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd VimEnter,BufEnter * call ZenkakuSpace()
  augroup END
endif

"scriptencoding cp932
"highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=white gui=underline guifg=darkgrey
"match ZenkakuSpace /　/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimの設定 ペースト 貼り付け
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set paste

"[vim]:set paste!より楽な貼り付け方

":a!

"コマンドラインモードのままだが、
"そこにテキストを貼り付け、その後にCtrl-cでok。



"これで貼り付ければ、簡単に貼り付けができる。
"インデントも自動で張られないし、登録している拡張機能も動かない。
"今までは :set paste! として貼り付けをしていたけど、
"これだと貼り付け後に各種の設定がクリアされてしまって面倒だったんだけど、
"これで解決。



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimの設定 フリーカーソル
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set virtualedit=all

"Vim-users.jp - Hack #195: virtualedit tip
"  http://vim-users.jp/2011/01/hack195/

"フリーカーソル設定時にペーストする場合、
"行末より左にカーソルがあったとき、詰めてペーストしてくれる。
"if has('virtualedit') && &virtualedit =~# '\<all\>'
"    nnoremap <expr> p (col('.') >= col('$') ? '$' : '') . 'p'
"endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimの設定 バックアップ
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"バックアップを作成する/しない
set backup
"set nobackup

"ファイルの上書きの前にバックアップを作る/作らない
"set writebackupを指定してもオプション 'backup' がオンでない限り、
"バックアップは上書きに成功した後に削除される。
set writebackup
"set nowritebackup

"スワップファイルを作成する/しない
"set swapfile
set noswapfile



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" バックアップファイルを作るディレクトリ
set backupdir=$HOME/.vim/backupfiles
"バックアップファイル名をFILE.bakに指定する。
set backupext=.bak

" スワップファイル用のディレクトリ
set directory=$HOME/.vim/backupfiles

" バックアップファイルが書き込まれるディレクトリです
"オプション"backupdir"と同じディレクトリ
let savevers_dirs = &backupdir
"この設定は.vimrcの後でないと効果がない？

".vimrc - サンプル設定 - fudist
"  http://sites.google.com/site/fudist/Home/vim-nihongo-ban/-vimrc-sample



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimの設定 検索
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"検索語を画面中央に
"nmap n nzz
"nmap N Nzz
"nmap * *zz
"nmap # #zz
"nmap g* g*zz
"nmap g# g#zz

" 検索などで飛んだらそこを真ん中に {{{
for maptype in ['n', 'N', '*', '#', 'g*', 'g#', 'G']
  execute 'nmap' maptype maptype . 'zz'
endfor
"

"検索結果文字列をハイライト
set hlsearch

" Use case insensitive search, except when using capital letters
" 検索時に大文字・小文字を区別しない。
"ただし、検索後に大文字小文字が
" 混在しているときは区別する

"検索文字列が小文字の場合は大文字小文字を区別なく検索する。
set ignorecase

"検索文字列に大文字が含まれている場合は区別して検索する。
set smartcase

"外部のエディタで編集中のファイルが変更されたら自動で読み直す
set autoread

"インクリメンタルサーチ
"検索で一文字ごとに検索ワードが絞られてくる。
set incsearch

"検索をファイルの先頭へループしない。
"set nowrapscan
"検索をファイルの先頭へループする。
set wrapscan

"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimの設定 tab設定
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"tabを開くことができる最大数 デフォルト=10
set tabpagemax=8

"tabバーを最初から表示、まったく表示しないのなら0、デフォルトは1
set showtabline=2



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" テンプレート
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"vimテクニックバイブルp47
"新しく HTML ファイルを開いたときに自動でテンプレートを挿入してくれる。
"$HOME/templates/html.tplにテンプレートとなるファイルを作成しておく必要がある。
"__DATE__をテンプレートに書いておくと、時間を記入してくれる。
augroup templateload
	autocmd!
	autocmd BufNewFile *.html    0r $HOME/.vim/templates/html.tpl
	autocmd BufNewFile *.rb      0r $HOME/.vim/templates/rb.tpl
	autocmd BufNewFile *.cpp     0r $HOME/.vim/templates/cpp.tpl
	autocmd BufNewFile *.java    0r $HOME/.vim/templates/java.tpl
	autocmd BufNewFile *.list    0r $HOME/.vim/templates/list.tpl
	autocmd BufNewFile *.m       0r $HOME/.vim/templates/m.tpl
	autocmd BufNewFile *.pl      0r $HOME/.vim/templates/pl.tpl
	autocmd BufNewFile *.pm      0r $HOME/.vim/templates/pm.tpl
	autocmd BufNewFile *.py      0r $HOME/.vim/templates/py.tpl
	autocmd BufNewFile *.sh      0r $HOME/.vim/templates/sh.tpl
	autocmd BufNewFile *.feature 0r $HOME/.vim/templates/feature.tpl

	autocmd BufNewFile *.html    %substitute#__DATE__#\=strftime('%Y-%m-%d')#ge
	autocmd BufNewFile *.rb      %substitute#__DATE__#\=strftime('%Y-%m-%d')#ge
	autocmd BufNewFile *.cpp     %substitute#__DATE__#\=strftime('%Y-%m-%d')#ge
	autocmd BufNewFile *.java    %substitute#__DATE__#\=strftime('%Y-%m-%d')#ge
	autocmd BufNewFile *.list    %substitute#__DATE__#\=strftime('%Y-%m-%d')#ge
	autocmd BufNewFile *.m       %substitute#__DATE__#\=strftime('%Y-%m-%d')#ge
	autocmd BufNewFile *.pl      %substitute#__DATE__#\=strftime('%Y-%m-%d')#ge
	autocmd BufNewFile *.pm      %substitute#__DATE__#\=strftime('%Y-%m-%d')#ge
	autocmd BufNewFile *.py      %substitute#__DATE__#\=strftime('%Y-%m-%d')#ge
	autocmd BufNewFile *.sh      %substitute#__DATE__#\=strftime('%Y-%m-%d')#ge
	autocmd BufNewFile *.feature %substitute#__DATE__#\=strftime('%Y-%m-%d')#ge
augroup END



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim-users.jp - Hack #162: Vimを終了しても undo 履歴を復元する
"  http://vim-users.jp/2010/07/hack162/

"再読込、vim終了後も継続するアンドゥ(vim7.3)
"アンドゥの保存場所(vim7.3)

"ファイルと同じディレクトリに .vimundo と言うディレクトリがあったら
"そのディレクトリへ、なければ $VIMundo へ保存する

set undodir=./.vimundo,~/.vimundo

"set undodir=./.vimundo,$VIMundo
"set undodir=./.vimundo,~/.vimundo

"Persistent undoを有効化(vim7.3)
"全てのファイルで有効に
set undofile



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" その他
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" バッファを切替えてもundoの効力を失わない
set hidden

" 起動時のメッセージを表示しない
"set shortmess+=I

" スクロール時の余白確保
set scrolloff=5

" 他で書き換えられたら自動で読み直す
set autoread

"ファイルを切り替える際、自動で保存するオプションとして
set autowrite

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"キーコードやマッピングされたキー列が完了するのを待つ時間(ミリ秒)（デフォルトは1000）
" キーコードはすぐにタイムアウト。マッピングはタイムアウトしない
set notimeout ttimeout ttimeoutlen=2500



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" カレントウィンドウにのみ罫線を引く
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

"ファイル保存先を指定し、古いファイルを削除する
"	:Rename newfilename.txtとすることでファイル名を変更することができます。

command! -nargs=1 -complete=file Rename f <args>|call delete(expand('#'))



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 新型スカウター
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"新型スカウターを開発した - 永遠に未完成
"  http://d.hatena.ne.jp/thinca/20091031/1257001194
"戦闘力 - vimグループ
"  http://vim.g.hatena.ne.jp/keyword/%e6%88%a6%e9%97%98%e5%8a%9b

function! Scouter(file, ...)
  let pat = '^\s*$\|^\s*"'
  let lines = readfile(a:file)
  if !a:0 || !a:1
    let lines = split(substitute(join(lines, "\n"), '\n\s*\\', '', 'g'), "\n")
  endif
  return len(filter(lines,'v:val !~ pat'))
endfunction
command! -bar -bang -nargs=? -complete=file Scouter
\        echo Scouter(empty(<q-args>) ? $MYVIMRC : expand(<q-args>), <bang>0)





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" Insert mode補完 設定編
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"他のプラグインで代用
"Vim-users.jp - Hack #9: Insert mode補完 設定編
"  http://vim-users.jp/2009/05/hack9/

"set completeopt=menuone,preview



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 補完
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"コマンドラインでの補完候補を表示する
set wildmenu

set wildmode=list:longest,list:full
" list:longest 複数あれば全て羅列・共通最長まで補完
" list:full 複数あれば全て羅列・最初のマッチのマッチを補完

" 閉じ括弧が入力されたとき、対応する開き括弧にわずかの間ジャンプする。
"（有効:showmatch/無効:noshowmatch）
set showmatch

"カーソルが括弧の始めに要る時間が長いと感じる場合は、
"オプションの'matchtime'を変更してください。
"このオプションの値が、マッチした括弧の始めを表示する時間(1/10秒)になります。
set matchtime=2



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" DiffOrig
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"読み込んだファイルと、現在編集している差分を見るコマンド。

"コマンド使用方法
":DiffOrig
"その他の操作は、通常のvimエディタ上での操作と変わりません。

"DiffOrigが読み込まれていない場合の為。
"DiffOrig {{{
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
      \ | wincmd p | diffthis
endif

"diff - vimdoc-ja
"  https://sites.google.com/site/vimdocja/diff-html

"差分へ移動する
"[c		前(上方)の変更の先頭へ移動する。
"]c		次(下方)の変更の先頭へ移動する。
"カウントが与えられた場合、その回数繰り返される。

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" Vim､Ruby編集時にinsert modeが異常に重くなる現象の解決方法
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim､Ruby編集時にinsert modeが異常に重くなる現象の解決方法 - <s>gnarl,</s>技術メモ”’<marquee><textarea>￥
"  http://d.hatena.ne.jp/gnarl/20120308/1331180615

" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window. Protect against
" screwing up folding when switching between windows.
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 折りたたみ
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"操作方法は操作のまとめに。
"set fdm=indent
"set foldcolumn=4

" foldlevelの値より深いレベルの折り畳み領域から出ると閉じられる
"set foldclose=all

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




