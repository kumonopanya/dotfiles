"vimでrubyのコードを保存した時に、シンタックスエラーをチェックして、エラーをハイライトする - joker1007の日記
"  http://d.hatena.ne.jp/joker1007/20120301/1330614611

function! s:ExecuteMake()
  if &filetype == 'ruby' && expand('%:t') !~? '^pry\d\{8}.\+\.rb'
    silent make! -c "%" | redraw!
  endif
endfunction

compiler ruby
augroup rbsytaxcheck
  autocmd! BufWritePost <buffer> call s:ExecuteMake()
augroup END


