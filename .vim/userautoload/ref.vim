
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ref.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"ref.vim の内部構造を大幅に書き換えた - 永遠に未完成
"  http://d.hatena.ne.jp/thinca/20100418/1271537141

"<CR> <C-]>	 K と同様キーワードを辿る
"<C-o> <C-t>	 履歴を戻る
"<C-i>	 履歴を進む
"に機能が割り当てられています。

"移動履歴が見れてジャンプできます。
":RefHistory



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"標準添付以外のリファレンスのソース - GitHub
"https://github.com/thinca/vim-ref/wiki/sources
"jQuery等



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" ref.vim ↑操作方法、説明↑			
"              ↓設定↓
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"コマンドラインからキーボードで直接入力
nmap <Leader>e :<C-u>Ref alc<Space>

"ドキュメント上でカーソル上のキーワードを即検索
nnoremap <space>e :<C-u>call ref#jump('normal', 'alc')<CR>
vnoremap <space>e :<C-u>call ref#jump('visual', 'alc')<CR>



"抜ける場合は、ウィンドウ移動キーで抜ける。


" テキストブラウザの表示を開始する行数
"（この設定行より上はテンプレートを取得しているのでジャンプさせr）
let g:ref_alc_start_linenumber = 43 

" 一度開いたページをキャッシュします。
let g:ref_alc_use_cache = 1 

" 文字化けするならここで文字コードを指定してみる
"Windows用
"let g:ref_alc_encoding = 'Shift-JIS' 

"refeで最新のrubyマニュアルを読み込む。
"let g:ref_refe_cmd = "~/rubyrefm/refe-1_9_2"







""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





