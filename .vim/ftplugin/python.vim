"Hashnote - Vimを最強のPython IDEにする
"http://hashnote.net/2011/12/7/12/

"Ubuntu
"$ sudo apt-get install curl python-all-dev python3-all-dev
"$ sudo apt-get install libreadline6-dev libsqlite3-dev libgdbm-dev
"$ sudo apt-get install libbz2-dev build-essential libxml2-dev libxslt1-dev

"$ curl -kL http://xrl.us/pythonbrewinstall | bash



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" PEP 8 Indent rule
setl tabstop=8
setl softtabstop=4
setl shiftwidth=4
setl smarttab
setl expandtab
setl autoindent
setl nosmartindent
setl cindent
setl textwidth=80
setl colorcolumn=80

" Folding
"setl foldmethod=indent
"setl foldlevel=99



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"タブ
"インデントの色付けon プラグイン
:IndentGuidesEnable
":IndentGuidesDisable



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" 自然言語処理用
     " python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Pythonを快適に編集できるようvimを設定する - 玉虫色に染まれ！
"http://d.hatena.ne.jp/over80/20090305/1236264851

"Python
"タブキー設定 pythonでは言語仕様でタブ幅は８と決まっている
"setl expandtab tabstop=8 shiftwidth=4 softtabstop=4
"setl tabstop=2 shiftwidth=2 softtabstop=0

"python ハイライト
let python_highlight_all = 1

"辞書
"let g:pydiction_location='~/.vim/NeoBundle/pydiction/complete-dict'
"オートインデント
"setl autoindent
"賢いインデントをする
setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

"Python実行
" シェル画面上に結果表示

"function! s:Exec()
"    exe "!" . &ft . " %"        
":endfunction         
"command! Exec call <SID>Exec() 
"map <silent> ,p :call <SID>Exec()<CR>



"Pythonで実行
" シェル画面上に結果表示

"nnoremap <silent> ,, :<C-u>execute '!' &l:filetype '%'<Return>





"VimとPythonとnoseとTDDと - vimまっしぐら★ - vimグループ
"http://vim.g.hatena.ne.jp/tokorom/20110419/1303236571



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"ファイルタイプの設定
"テスト
"テスト
"テスト

"Pythonテスト
"テストコードと思われるファイルを開いたとき、そのfiletypeを「python.test」とする設定
"autocmd BufWinEnter,BufNewFile test*.py set filetype=python.test






""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" python ↑設定 ↓操作方法、説明
""tag" unite ↑操作方法、説明↑			
"            ↓設定↓
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"quickrun

"python
"最終行の設定は、filetypeが「python.test」のときのquickrunの設定*2
"let g:quickrun_config['python.test'] = {'command': 'nosetests', 'exec': ['%c -v %s']}




z
