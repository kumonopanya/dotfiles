setlocal makeprg=ruby\ -cdw\ %
setlocal errorformat=%f:%l:%m

if !exists("g:ruby_flyquickfixmake")
  let g:ruby_flyquickfixmake = 1
  au BufWritePost *.rb silent make
endif
