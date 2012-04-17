
"スニペットを展開する。
"<C-k> 

"コマンドラインモードで
" :Unite snippet
" 候補一覧が現れる
" 選択後Enterで自動展開
" 選択後eで編集
" 選択後pでプレビュー

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" neocomplcache 公式設定
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" * 	ワイルドカード
" ../ ファイル名の補完の開始。

"C-n補完の対象(カレントバッファ、タグ、辞書) :help 'complete'
"neocomplcacheには影響しない？
"neocomplcacheには影響しないそうなのでコメントアウト
"set complete=.,w,b,u,k,t
"補完ウィンドウの設定 :help completeopt
set completeopt=menuone

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

"neocomplcache を有効にする
let g:neocomplcache_enable_at_startup = 1

"neocomplcache の smart case 機能を有効にする
" 大文字小文字を区別する
"入力に大文字が入力されている場合、大文字小文字の区別をする
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1

"大文字小文字を区切りとしたあいまい検索を行うかどうか。
"DTと入力するとD*T*と解釈され、DateTime等にマッチする。
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 0

"アンダーバーを区切りとしたあいまい検索を行うかどうか。
"m_sと入力するとm*_sと解釈され、mb_substr等にマッチする。
 "_区切りの補完を有効にする
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 0

"シンタックスをキャッシュするときの最小文字長を設定する
"シンタックスファイル中で、補完の対象となるキーワードの最小長さ。初期値は4。
let g:neocomplcache_min_syntax_length = 3

"neocomplcacheを自動的にロックするバッファ名のパターンを指定。
"ku.vimやfuzzyfinderなど、neocomplcacheと相性が悪いプラグインを使用する場合に設定。
" Set minimum syntax keyword length.
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

"ディクショナリ補完
"ファイルタイプごとの辞書ファイルの場所
let g:neocomplcache_dictionary_filetype_lists = {
  \ 'default' : '',
  \ 'vimshell' : $HOME.'/.vimshell_hist',
  \ 'scheme' : $HOME.'/.gosh_completions',
  \ 'php' : $HOME . '/.vim/dict/php.dict',
  \ }
 



" Define keyword.
"補完するためのキーワードパターンを指定
" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif

"日本語を補完候補として取得しないようにする
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

"前回行われた補完をキャンセルします。
"C-gで補完を元に戻す
" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

"SuperTabの挙動をエミュレーションしています。
"スニペットが展開可能なら即展開されます。
"補完中なら次の候補を選択、そうでなければ<Tab>を挿入します。
"補完を選択するのなら上下キーで選びます。
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

"他に設定済み TABキー
"tabで補完候補の選択を行う
" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>"
        function! s:check_back_space()"{{{
        let col = col('.') - 1
        return !col || getline('.')[col - 1] =~ '\s'
        endfunction"}}



" Recommended key-mappings.
" <CR>: close popup and save indent.
"改行で補完ウィンドウを閉じる mukou
"現在選択している候補を確定します。
inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"

" <C-h>, <BS>: close popup and delete backword char.
"C-h, BSで補完ウィンドウを確実に閉じる
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()



" AutoComplPop like behavior.
let g:neocomplcache_enable_auto_select = 0

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"



" オムニ補完
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"オムニ補完のパターンを設定
" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

"オムニ補完の手動呼び出し
inoremap <expr><C-Space> neocomplcache#manual_omni_complete()
 



"キャッシュディレクトリの場所
"RamDiskをキャッシュディレクトリに設定
if has('win32') + has('win64')
  let g:neocomplcache_temporary_dir = 'E:/.neocon'
elseif has('mac')
  let g:neocomplcache_temporary_dir = '/Volumes/RamDisk/.neocon'
elseif has('unix')
  let g:neocomplcache_temporary_dir = '/tmp/.neocon'
endif
 
"シンタックス補完を無効に
"let g:neocomplcache_plugin_disable = {
"  \ 'syntax_complete' : 1,
"  \ }
 
"関数を補完するための区切り文字パターン
if !exists('g:neocomplcache_delimiter_patterns')
  let g:neocomplcache_delimiter_patterns = {}
endif
let g:neocomplcache_delimiter_patterns['ruby'] = ['=>', '::', '\']

"ファイルタイプの関連付け
if !exists('g:neocomplcache_same_filetype_lists')
  let g:neocomplcache_same_filetype_lists = {}
endif
"let g:neocomplcache_same_filetype_lists['ctp'] = 'php'
"let g:neocomplcache_same_filetype_lists['twig'] = 'html'
 
"タグ補完
"タグファイルの場所
augroup SetTagsFile
  autocmd!
  autocmd FileType php set tags=$HOME/.vim/tags/php.tags
augroup END
"タグ補完の呼び出しパターン
if !exists('g:neocomplcache_member_prefix_patterns')
  let g:neocomplcache_member_prefix_patterns = {}
endif
let g:neocomplcache_member_prefix_patterns['php'] = '->\|::'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" neocomplcache 非公式設定
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"ポップアップメニューで表示される候補の数。初期値は100
"let g:neocomplcache_max_list = 50










""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" スニペット
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"スニペット補完
"標準で用意されているスニペットを無効にする。初期化前に設定する
let g:neocomplcache_snippets_disable_runtime_snippets = 1

" スニペットファイルの保存先
" ~/.vim/snippetsを作成しておく。
let g:neocomplcache_snippets_dir='~/.vim/snippets'

"↑これを有効にしたあとに、
" ~/.vim/bundle/neocomplcache-snippets-complete/autoload/neocomplcache/sources/snippets_complete
" から
" ~/.vim/snippets
" へコピーしておく。
" これで浅いディレクトに編集しやすいファイルをおける。
" またほかのスニペットファイルを一緒に合わせやすい。

"NeoComplCacheEnable
"neocomplcacheを有効にし、初期化を行う。 これを実行すると、今
"までのキャッシュが消えてしまうので注意。
"スニペットファイルを移動させたタイミングで行う。
"これはバンドルで管理される部分と、他人の手で管理される部分をそれぞれ分ける為。

"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"スニペットファイルを編集する (edit snipet)
"nnoremap <Space>nes :NeoComplCacheEditSnippets
 "   noremap es :<C-u>NeoComplCacheEditSnippets<CR>
noremap <Space>sni :<C-u>NeoComplCacheEditSnippets<CR>
"noremap sni        :<C-u>NeoComplCacheEditSnippets<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"_.snip  				共通のスニペットファイル
"ファイル拡張子.snip	ファイル拡張子用のスニペットファイル

"例
"snippet     rj rejo renjso
"abbr        render :json
"    render :json => 

"解説
"	snippet 短縮コマンド スペースを開けることで複数指定できる。
"	abbr	候補リストに表示されるコマンド
"			実際の動き


"${0} と書くとここへは最後に飛ぶ



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" :Unite snippet 
":Unite snippet は予め.vimrcにマッピングしておくとより恩恵を受けられるでしょう。
"imap <C-s>  <Plug>(neocomplcache_start_unite_snippet)

"imap <C-s> :<C-u>Unite snippet <Enter>

"imap <C-s> uss



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"補完候補のなかから、共通する部分を補完します。
"ちょうど、シェルの補完のような動作です。
"inoremap <expr><C-y> neocomplcache#complete_common_string()


"neocomplcache + snipMate をやめて neocomplcache 単体に切り替える - cooldaemonの備忘録
"http://d.hatena.ne.jp/cooldaemon/20110420/1303272735



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" zencoding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"zencoding連携
"let g:use_zen_complete_tag = 1
 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" キーマッピング
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"表示行単位で移動(snippet展開対策済み)
nnoremap j gj
onoremap j gj
xnoremap j gj
nnoremap k gk
onoremap k gk
xnoremap k gk

" mukou
"vim標準のキーワード補完を置き換える
inoremap <expr><C-n> neocomplcache#manual_keyword_complete()

" mukou
"C-eで補完のキャンセルし、ウィンドウを閉じる。
"ポップアップが開いていないときはEndキー
"inoremap <expr><C-e> pumvisible() ? neocomplcache#cancel_popup() : "\<End>"

"補完候補の共通文字列を補完する(シェル補完のような動作)
inoremap <expr><C-l> neocomplcache#complete_common_string()




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" old setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"自動補完を行う入力数を設定。初期値は2
"let g:neocomplcache_auto_completion_start_length = 2

"if !exists('g:neocomplcache_plugin_completion_length')
"endif
"let g:neocomplcache_plugin_completion_length = {
"\'snippets_complete' : 2, 
"\'buffer_complete' : 2, 
"\'syntax_complete' : 2, 
"\'tags_complete' : 3, 
"\}

"手動補完時に補完を行う入力数を制御。値を小さくすると文字の削除時に重くなる
let g:neocomplcache_manual_completion_start_length = 3

"バッファや辞書ファイル中で、補完の対象となるキーワードの最小長さ。初期値は4。
let g:neocomplcache_min_keyword_length = 3

"1:補完候補検索時に大文字・小文字を無視する
" 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplcache_enable_ignore_case = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" neocomplcache ↑操作方法、説明↑			
"                    ↓設定↓
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""







""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""







""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""







