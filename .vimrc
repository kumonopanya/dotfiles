" vim:set ts=8 sts=2 sw=2 tw=0: (この行に関しては:help modelineを参照)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 履歴
"2012年1月7日（.vimrcを整理）
"2012年4月17日（githubで管理)

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

" ;でコマンド入力( ;と:を入れ替)
noremap ; :
"noremap : ;


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
".vimをバックアップ
".vimを新しく作る。
"git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
"vi
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



"他の人のまとめ、Pythonとrubyは結合済み
"dann/vim-neocon-snippets
"https://github.com/dann/vim-neocon-snippets



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



"==========================================================
"==========================================================
"==========================================================











""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" unite
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""ファイラー unite
NeoBundle 'Shougo/unite.vim.git'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" unite color
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vim-users.jp - Hack #188: 見た目を気軽に変更する
"  http://vim-users.jp/2010/12/hack188/

"--"NeoBundle 'ujihisa/unite-colorscheme'
"--"NeoBundle 'ujihisa/unite-font'

"g:unite_enable_start_insert: Uniteを挿入モードで開始します
"g:unite_enable_split_vertically: Uniteを縦分割で開始します
"ifの行: unite.vimがインストールされているときのみ以下のキーマッピングを行う
"nnoremapの行: acで:Unite colorscheme fontを実行するようにします。
"このように、:Uniteコマンドには複数のsourceを指定することができます

"--"let g:unite_enable_split_vertically = 1
"--"if globpath(&rtp, 'plugin/unite.vim') != ''
"--"  nnoremap ccv :<C-u>Unite -auto-preview colorscheme<Cr>
"--"endif

"カラースキームをプレビューできるコマンド
"ac
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
"--"NeoBundle 'tsukkee/unite-tag.git'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" unite.vimとvimprocがインストールされていると非同期でプラグインがアップデートできる。
" Windows7 64bitでvimshellやvimprocを使うには特別なインストール設定が必要なのでコメントアウト
"--"NeoBundle 'Shougo/vimshell.git'
"--"NeoBundle 'Shougo/vimproc.git'

"--"NeoBundle 'sudo.vim'

"vimの既に開いているファイルをsudo.vimで開きなおすケース
"おそらくこのケースが最も使うケース
"既に開いているファイルを、特権ユーザで開きなおします
"注意点としては、既に保存されている(ファイルが存在する)のが条件です
"
":e sudo:%
"
"「%」が実行時に現在開いているファイルパスに置き換えられます
"



"==========================================================
"==========================================================
"==========================================================

"--"NeoBundle 'Shougo/vimfiler.git'

" vimfiler
"nnoremap <silent> <F7> :VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit<CR>
"let g:vimfiler_as_default_explorer = 1
"let g:vimfiler_safe_mode_by_default = 0



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" savevers.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

NeoBundle 'savevers.vim'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" quickrun
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

NeoBundle 'thinca/vim-quickrun'

"vimやruby環境、非同期環境は構築済み。
"NeoBundleなどでvim-quickrunはインストール済み。
"NeoBundle 'Shougo/vimshell.git'
"NeoBundle 'Shougo/vimproc.git'

" 出力先別にショートカットキーを設定する
" <Leader>w	単発
" <Leader>q 追加
for [key, com] in items({
      \   '<space><space>' : '>buffer',
\   '<Leader>w' : '>buffer',
\   '<Leader>q' : '>>buffer',
\   '<C-space>' : '>buffer',
\ })
  execute 'nnoremap <silent>' key ':QuickRun' com '-mode n<CR>'
  execute 'vnoremap <silent>' key ':QuickRun' com '-mode v<CR>'
endfor


"==========================================================

" コンフィグを全クリア
let g:quickrun_config = {}

"vimテクニックバイブルp209
"デフォルト設定
let g:quickrun_config._={
  \'vsplit': '' ,
  \'into': '0' ,
  \}

"if strlen($rvm_bin_path)
"  let g:quickrun_config['ruby'] = {
"  \ 'exec': '$rvm_bin_path/ruby %s',
"  \ 'tempfile': '{tempname()}.rb',
"  \}
"endif

"  \ 'command': 'ruby',


" 横分割をするようにする
"let g:quickrun_config['*'] = {'vsplit': ''}
" 縦分割をするようにする
"let g:quickrun_config['*'] = {'split': ''}
" カーソルをもとのバッファに戻す。(無効？？)
"let g:quickrun_config['*'] = {'into': '0'}
" vimproc。
"let g:quickrun_config['*'] = {'runner': 'vimproc'}



"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" quickrun RSpec
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"augroup QrunRSpec
augroup RSpec
  autocmd!
  autocmd BufWinEnter,BufNewFile *_spec.rb set filetype=ruby.rspec
augroup END

let rspec_outputter = quickrun#outputter#buffer#new()



function! rspec_outputter.init(session)
  call call(quickrun#outputter#buffer#new().init, [a:session], self)
endfunction

function! rspec_outputter.finish(session)



" 背景に色をつける。
  highlight default RSpecGreen   ctermfg=White ctermbg=Green guifg=White guibg=Green
  highlight default RSpecRed     ctermfg=White ctermbg=Red   guifg=White guibg=Red
  highlight default RSpecComment ctermfg=White ctermbg=Cyan  guifg=White guibg=Cyan
  highlight default RSpecNormal  ctermfg=Black ctermbg=White guifg=Black guibg=White


  call matchadd("RSpecGreen", "^[\.F]*\.[\.F]*$")
  call matchadd("RSpecGreen", "^.*, 0 failures$")

  call matchadd("RSpecRed", "F")
  call matchadd("RSpecRed", "^.*, [1-9]* failures.*$")
  call matchadd("RSpecRed", "^.*, 1 failure.*$")
  call matchadd("RSpecRed", "^ *(.*$")
  call matchadd("RSpecRed", "^ *expected.*$")
  call matchadd("RSpecRed", "^ *got.*$")
  call matchadd("RSpecRed", "^ *Failure/Error:.*$")
  call matchadd("RSpecRed", "^.*(FAILED - [0-9]*)$")
  call matchadd("RSpecRed", "^rspec .*:.*$")

  call matchadd("RSpecComment", " # .*$")

  call matchadd("RSpecNormal", "^Failures:")
  call matchadd("RSpecNormal", "^Finished")
  call matchadd("RSpecNormal", "^Failed")

  call call(quickrun#outputter#buffer#new().finish,  [a:session], self)
endfunction

call quickrun#register_outputter("rspec_outputter", rspec_outputter)

"quickrunの動作をvimprocに指定する。
"let g:quickrun_config._ = {'runner' : 'vimproc'}

" bundleを利用する設定。
let g:quickrun_config['rspec/bundle'] = {
  \ 'type': 'rspec/bundle',
  \ 'command': 'rspec',
  \ 'exec': 'bundle exec %c %s',
  \ 'outputter': 'rspec_outputter',
  \}

" 通常で利用する設定。
let g:quickrun_config['rspec/normal'] = {
  \ 'type': 'rspec/normal',
  \ 'command': 'rspec',
  \ 'exec': '%c %s',
  \ 'outputter': 'rspec_outputter',
  \}


"※ここで動作を変更する
"※ここで動作を変更する
"どの場面で使うか（rubyかrailsか）によってコマンドが変わるので
"手動でコメントアウトをつけたり外したりして利用している。
function! RSpecQuickrun()
" 通常の場合。（rubyなど）
  let b:quickrun_config = {'type' : 'rspec/normal'}
" bundle、Gemfileを利用している場合。（railsなど）
"  let b:quickrun_config = {'type' : 'rspec/bundle'}
endfunction

autocmd BufReadPost *_spec.rb call RSpecQuickrun()



"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" quickrun python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:quickrun_config['python'] = {'command' : 'python', 'exec' : ['%c']}

"Python用テストフレームワークnose (1) :: 幕の内 - CMS - コンテンツマネジメントシステム
" http://makunouchi.jp/zope3/7396323127

"Pythonのeasy_installを使えるようにする
"python-setuptools
"nose
"sudo apt-get install python-setuptools
"もしくは
"パッケージマネージャからインストール。

"QuickRun.vim 実行前に定義した関数を実行するプラグインを作った - Heavens hell
"  http://d.hatena.ne.jp/heavenshell/20120121/1327146447

"Nose を quickrun する - Heavens hell
"  http://d.hatena.ne.jp/heavenshell/20110227/1298813517

"autocmd BufWinEnter,BufNewFile test*.py set filetype=python.test
"let g:quickrun_config['python.test'] = {
"  \ 'command': 'nosetests',
"  \ 'exec': ['%c -v %s'],
"}

"autocmd BufWinEnter,BufNewFile test*.py set filetype=python.unit
"let g:quickrun_config['python.unit'] = {
"  \ 'command': 'nosetests',
"  \ 'cmdopt': '-s -vv',
"}



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" quickrun エラー位置にジャンプ
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"  [VIM] [quickrun] [Ruby] Quickrunで即実行してQuickfixで即エラー位置にジャンプする - rohinomiya's posterous
"  http://rohinomiya.posterous.com/vim-quickrun-ruby-quickrunquickfix

NeoBundle 'dannyob/quickfixstatus'
"NeoBundle 'quickfixstatus.vim'

"QuickFix の該当箇所をハイライトする hier.vim plugin - C++でゲームプログラミング
"  http://d.hatena.ne.jp/osyo-manga/20110501/1304273451
NeoBundle 'jceb/vim-hier'

" RSpec 対応
let g:quickrun_config['ruby.rspec'] = {'command': 'rspec'}

" :QuickRun -outputter my_outputter
" プロセスの実行中は、buffer に出力し、
" プロセスが終了したら、quickfix へ出力を行う
" http://d.hatena.ne.jp/osyo-manga/20110729/1311934261
" http://d.hatena.ne.jp/osyo-manga/20110921/1316605254

" 既存の outputter をコピーして拡張
let my_outputter = quickrun#outputter#multi#new()
let my_outputter.config.targets = ["buffer", "quickfix"]

function! my_outputter.init(session)
    " quickfix を閉じる
    :cclose
    " 元の処理を呼び出す
    call call(quickrun#outputter#multi#new().init, [a:session], self)
endfunction

function! my_outputter.finish(session)
    call call(quickrun#outputter#multi#new().finish, [a:session], self)
    " 出力バッファの削除
    bwipeout [quickrun
    " vim-hier を使用している場合は、ハイライトを更新
    :HierUpdate
    " quickfix への出力後に quickfixstatus を有効に
    :QuickfixStatusEnable
endfunction

" quickrun に outputter を登録
call quickrun#register_outputter("my_outputter", my_outputter)

" <leader>r を再定義
nmap <silent> <leader>r :QuickRun -outputter my_outputter<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" quickrun その他
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"let g:quickrun_config['coffee'] = {'command' : 'coffee', 'exec' : ['%c -cbp %s']}




"==========================================================
"==========================================================
"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vim-ref
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

NeoBundle 'thinca/vim-ref'
"NeoBundle 'ref.vim'
"let g:ref_refe_cmd = '~/rubyrefm/refe-1_9_2'

"操作例
":Unite ref/perldoc
":Unite ref/phpmanual

"==========================================================
"==========================================================
"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"find + grep

NeoBundle 'ack.vim'

"# 基本的な使い方
""":Ack [options] {pattern} [{directory}]

"# hogeという文字を検索するときは
":Ack hoge



"==========================================================

"NERDTree上からディレクトリ全体をfind + grep
"とある vim の機能拡張（プラグイン）-- NERDTree | とある港人の記憶装置
"  http://www.opalex.net/drupal/content/%E3%81%A8%E3%81%82%E3%82%8B-vim-%E3%81%AE%E6%A9%9F%E8%83%BD%E6%8B%A1%E5%BC%B5%EF%BC%88%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3%EF%BC%89-nerdtree

"scrooloose/nerdtree · GitHub
"  https://github.com/scrooloose/nerdtree
NeoBundle 'scrooloose/nerdtree.git'
"NeoBundle 'The-NERD-tree'

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

" vim-surround_custom_mapping {{{
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
let g:surround_custom_mapping.javascript = {
            \ 'f':  "function(){ \r }",
            \ }
let g:surround_custom_mapping.vim = {
            \'f':  "function! \r endfunction",
            \'z':  "\"{{{ \r \"}}}",
            \ }

"yss- で実行。
"45 は 「-」の ASCII コード番号です。
"autocmd FileType html let b:surround_45 = "<% \r %>"
"yssE で実行。
"autocmd FileType html let b:surround_{char2nr("E")} = "<<EOS \r EOS"



"==========================================================
"==========================================================
"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimdoc-ja
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

NeoBundle 'vim-jp/vimdoc-ja.git'

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
" JavaScript, ECMAScript
au BufNewFile,BufRead *.js,*.javascript,*.es,*.jsx	setf javascript


"==========================================================

"VimでCoffeeScriptをリアルタイムプレビュー - Cside::StudyMemo - Csideグループ
"  http://cside.g.hatena.ne.jp/Cside/20120112/p1
NeoBundle 'kchmck/vim-coffee-script'

autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufWritePost *.coffee :CoffeeCompile watch vert
autocmd BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!



"==========================================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ruby rails
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"補完ができる、ハイライトがつく。
"vim-ruby/vim-ruby · GitHub
"  https://github.com/vim-ruby/vim-ruby
NeoBundle 'vim-ruby/vim-ruby'

NeoBundle 'tpope/vim-rails'
"Vim-users.jp - Hack #209: Vim で Ruby on Rails の開発を行なう
"  http://vim-users.jp/2011/03/hack209/
"rails.vim

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

NeoBundle 'QuickBuf'

" j	カーソルを下に移動する
" k	カーソルを上に移動する
" <Enter>	選択したバッファを表示する
" u	バッファをプレビュー表示する
" d	選択したバッファをアンロードする。「bdelete」コマンドと同じ。
" w	選択したバッファをアンロードする。「bwipeout」コマンドと同じ。
" l	押すたびに一覧を「buflisted」「nobuflisted」のリストに切り替える
" <ESC>	バッファ一覧を閉じる
"
"
"QuickBuller.vim
":let g:qb_hotkey = "<F6>"
:let g:qb_hotkey = "''"

"tab <S-F5> 一つ前のバッファへ
"tab <S-F6> 次のバッファへ
"map <silent> <Space>f <C-u>:bp<CR>
"map <silent> <Space>d <C-u>:bn<CR>
"map <silent> fd :bp<CR>
"map <silent> df :bn<CR>
"map <silent> fd :bp<CR>
map <silent> tt :bn<CR>

"==========================================================

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

""""Ruby用の設定をこちらに設定を書いた。
"~/.vim/ftplugin/ruby/ujihisa.vim

NeoBundle 'kana/vim-smartchr'
"NeoBundle 'smartchr'


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

NeoBundle 'kevinw/pyflakes-vim.git'

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


"==========================================================



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" yankring
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Uniteで似たような機能がある。
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
let g:yankring_max_history = 10




"==========================================================

"NeoBundle 'janx/vim-rubytest'

"let g:rubytest_cmd_spec = "spec %p"
"let g:rubytest_cmd_example = "spec %p -l %c"
"let g:rubytest_in_quickfix = 1




"==========================================================

"gundo 詳細なundo
"NeoBundle 'sjl/gundo.vim'

"gundo.vimが超便利なのとvimのアンドゥツリーについて | uuu
"  http://uu59.blog103.fc2.com/blog-entry-7.html

"nnoremap <F5> :GundoToggle<CR>

"==========================================================

"CoffeeScriptを保存すると勝手にjsを作ってほしい
"Markdownを保存すると勝手にmarkdownをつくってほしい
"それを実現するのがshadow.vim

"ujihisa/shadow.vim · GitHub
"  https://github.com/ujihisa/shadow.vim

NeoBundle 'ujihisa/shadow.vim'

"let g:shadow_debug = 1




"==========================================================

"
"""""NeoBundle 'Lokaltog/vim-powerline'

" vim-powerline {{{
"let g:Powerline_symbols = 'fancy'
"let g:Powerline_symbols = 'unicode'
" }}}

"ファイル名、ファイル系文字コード 行番号

"==========================================================

"ctag が必要

"NeoBundle 'rgo/taglist.vim'
" taglist.vim "{{{
"nnoremap <silent> <F5> :TlistToggle<CR>
"let Tlist_Use_Right_Window = 1
"let Tlist_WinWidth = 40







"==========================================================

"Vim-users.jp - Hack #226: 複数のキーワードを手軽にハイライトする
"  http://vim-users.jp/2011/08/hack226/

"キーワードを複数以上ハイライトする。
"quickhl.vim
"quickhl.vim
"quickhl.vim






"==========================================================

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
NeoBundle 'scrooloose/syntastic.git'
"syntastic/doc/syntastic.txt at master · scrooloose/syntastic · GitHub
"  https://github.com/scrooloose/syntastic/blob/master/doc/syntastic.txt


"Python の場合は PyFlakes でチェックして欲しくて、Syntastic ではチェックして欲しくない。

let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': ['html', 'perl'],
  \ 'passive_filetypes': ['php'] }

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






"==========================================================






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
"NeoBundle 'tpope/vim-rails'

"NeoBundle 'tpope/vim-unimpaired'
"NeoBundle 'tpope/vim-abolish'
"NeoBundle 'tsaleh/vim-matchit'
"NeoBundle 'vim-ruby/vim-ruby'
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

"color
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

"ヘルプ検索の日本語の優先順位を上げる
"日本語ヘルプファイルインストール後に
set helplang=ja
"set helplang=ja,en

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

"nowrap 長くても折り返さない。
set nowrap

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
highlight NonText ctermfg=DarkBlue
highlight SpecialKey ctermfg=DarkBlue

"set wrap linebreak nolist
" cf http://vimcasts.org/episodes/soft-wrapping-text/
"command! Wrap set wrap linebreak nolist
"}}}

"set list
"set nolist

"set listchars+=tab:>_
"set listchars=tab:>-,extends:<,trail:-,eol:<



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Vimを使ったRuby On Rails開発環境の構築 - ナレッジエース
"  http://blog.blueblack.net/item_133

"Rails関連ファイルで文字コードをUFT-8に設定
"au User Rails* set fenc=utf-8



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" キーカスタマイズ 1キー
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
"}}}

nnoremap <Space> jzz
nnoremap <S-Space> kzz

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

" Don't use Ex mode, use Q for formatting
map Q gq


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"ビジュアルモード時vで行末まで選択
vnoremap v $h



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimの設定 tab設定
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"tabを開くことができる最大数 デフォルト=10
set tabpagemax=8

"tabバーを最初から表示、まったく表示しないのなら0、デフォルトは1
set showtabline=2



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" vimの設定 ステータスライン
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"ステータス行を表示
set laststatus=2

""ステータス行の指定
"fugitiveを利用できる場合。
set statusline=%f%<%m%r%h%w\ %y%<%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%=%<<%l/%L>,[%c%V]%6P\ %{fugitive#statusline()}\

"fugitiveを利用できない場合。
"set statusline=%y%<%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%f%m%r%h%w%=<%l,%c%V>%6p%%

"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

"設定例
""ステータス行の指定
"左端1	ファイル名
"set statusline=%m%<%f\ %h%r
"左端2	GITレポジトリ
"set statusline+=%{fugitive#statusline()}\
"左端4	ファイルタイプ
"set statusline+=%y
"左端5	ステータス行に文字コードと改行コード表示
"set statusline+=%<%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}

"右端 行数、カーソル位置
"set statusline+=%=<%l/%L>,[%c%V]%6P

"set statusline=  	設定
"set statusline+=		追加設定

"\  - \とスペースでスペースを置ける。
"%< - 行が長すぎるときに切り詰める位置
"%f - ファイル名（相対パス）
"%F - ファイル名（絶対パス）
"%t - ファイル名（パス無し)
"%y - ファイルタイプ

"%m - 修正フラグ （[+]または[-]）
"%r - 読み込み専用フラグ（[RO]）
"%h - ヘルプバッファ
"%w - preview window flag

"%{'['.(&fenc!=''?&fenc:&enc).']['.&fileformat.']'} - fileencodingとfileformatを表示

"%= - 左寄せと右寄せ項目の区切り（続くアイテムを右寄せにする）
"%l - 現在のカーソルの行番号
"%L - 総行数
"%c - column番号
"%V - カラム番号



""""""""""""""""""""""""""""""
"挿入モード時、ステータスラインの色を変更
""""""""""""""""""""""""""""""
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
    redraw
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 色 カラー
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 日本語入力ON時のカーソルの色を設定
if has('multi_byte_ime') || has('xim')
	highlight CursorIM guibg=Purple guifg=NONE
endif

" カーソル行をハイライト
set cursorline

  " カレントウィンドウにのみ罫線を引く
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END

:highlight clear CursorLine




:highlight CursorLine gui=underline guibg=black

":highlight CursorLine cterm=underline
:highlight CursorLine ctermbg=Black
":highlight CursorLine ctermfg=none

":highlight Normal ctermfg=grey
"highlight Normal ctermbg=Black
":highlight StatusLine term=none cterm=none ctermfg=black ctermbg=grey

" DarkRed
" DarkGreen
" DarkBlue
" DarkCyan
" DarkMagenta
" DarkYellow
" White
" Black


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
"gt 右のタブへ
"gT 左のタブへ

" タブ移動 {{{
noremap gh gT
noremap gl gt
"}}}


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






"<F6>
"vim-flake8
	autocmd FileType python map <buffer> <F6> :call Flake8()<CR>

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
	"インデントを行う。
	nmap <silent> <F10> <C-u>gg=G

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
	"○.vimrcファイルの再読み込み。
	nmap <F11> <Esc>:source ~/.vimrc<CR>
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
"vnoremap <C-j> <ESC>
"inoremap <C-m> <ESC>
"vnoremap <C-m> <ESC>
" 行ごとに挿入モードから編集モードに戻ってしまうのでコメントアウト


"検索のハイライトを消す。
":nohlsearch<CR><ESC>


"""inoremap <C-h> <Left>
"""inoremap <C-f> <Down>
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

"<Leader><Leader>で変更があれば保存
noremap zz :up<CR>





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"キーコードやマッピングされたキー列が完了するのを待つ時間(ミリ秒)（デフォルトは1000）
" Quickly time out on keycodes, but never time out on mappings
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
" }}}



"diff - vimdoc-ja
"  https://sites.google.com/site/vimdocja/diff-html

"差分へ移動する
"[c		前(上方)の変更の先頭へ移動する。
"]c		次(下方)の変更の先頭へ移動する。
"カウントが与えられた場合、その回数繰り返される。









""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" grep
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" for grep {{{
"{{{ 外部grep
let &grepprg="find . -type f -name '*.*'
              \ -a -not -regex '.*\\.swp$'
              \ -a -not -regex '.*\\.gz$'
              \ -a -not -regex '.*\\.gif$'
              \ -a -not -regex '.*\\.png$'
              \ -a -not -regex '.*\\.jpg$'
              \ -a -not -regex '.*\\.bak$'
              \ -a -not -regex '.*\\.bk$'
              \ -a -not -regex '.*\\.class$'
              \ -a -not -regex '.*\\.db$'
              \ -a -not -regex '.*\\.properties$'
              \ -a -not -regex '.*_$'
              \ -a -not -regex '.*log$'
              \ -a -not -regex '.*gomi.*'
              \ -a -not -regex '.*hoge.*'
              \ -a -not -regex '.*/\\.svn/.*'
              \ -a -not -regex '.*/\\.git/.*'
              \ -a -not -regex '.*/tmp/.*'
              \ -a -not -regex '.*/resources/.*'
              \ -a -not -regex '.*/images/.*'
              \ -a -not -regex '.*/plugins/.*'
              \ -a -not -regex '.*/coverage/.*'
              \ -a -not -regex '.*/alias/.*'
              \ -a -not -regex '.*/ext/.*'
              \ -a -not -regex '.*_compress/.*'
              \ -a -not -regex '^\\./\\..*'
              \ -a -not -regex '^\\./work.*'
              \ -a -not -regex '^\\./cpan.*'
              \ -a -not -regex '^\\./etc.*'
              \ -a -not -regex '.*schema.rb$'
              \ -print0 \\| xargs -0 grep -nH"
"}}}

" カーソル直下の単語(Word)
nmap <C-g><C-w> :grep "<C-R><C-W>" \| bot cw<CR>
" カーソル直下の単語(WORD)(C-aはscreenとバッティングするためC-eに)
nmap <C-g><C-e> :grep "<C-R><C-A>" \| bot cw<CR>
" 最後に検索した単語
nmap <C-g><C-h> :grep "<C-R>/" \| bot cw<CR>

"}}}






""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 上下のカーソルキーでコマンドライン履歴表示
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Ctrl+Nでコマンドライン履歴を一つ進む(前方一致)
cnoremap <C-P> <UP>
" Ctrl+Pでコマンドライン履歴を一つ戻る(前方一致)
cnoremap <C-N> <DOWN>






""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 全選択
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <Leader>a ggVG



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" メニューカラー
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 色番号  :help ctermbg(NR-8)
highlight Pmenu     ctermbg=4
"highlight PmenuSel  ctermbg=5
highlight PmenuSbar ctermbg=0

highlight clear Folded
highlight clear FoldColumn






""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Visually select the text that was last edited/pasted
nmap gV `[v`]


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
""tag"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




