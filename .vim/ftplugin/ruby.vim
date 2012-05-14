"  :nmap <Leader>ie :IndentGuidesEnable<CR>
"  :nmap <Leader>id :IndentGuidesDisable<CR>

".rhtml, .rbでタブ幅を2に変更
"au BufNewFile,BufRead *.rhtml set nowrap tabstop=2 shiftwidth=2
"au BufNewFile,BufRead *.rb    set nowrap tabstop=2 shiftwidth=2

setl tabstop=2
setl shiftwidth=2
setl textwidth=0
setl softtabstop=4 
setl expandtab

"setl 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tag" errormarker.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"rrormarker.vim を使って flymake っぽくするやつを試してみた - ◆F99a.q8oVEの日記
"  http://d.hatena.ne.jp/f99aq/20080814/1218783740

"rubyファイルだけじゃなくHTMLも判定してしまっている。
""" for error marker
"setlocal makeprg=ruby\ -cdw\ %
"setlocal errorformat=%f:%l:%m

"au BufWritePost <buffer> silent make



