inoremap <expr> <buffer> { smartchr#loop('{', '#{', '{{{')
inoremap <buffer> <expr> = smartchr#loop(' = ', ' => ', ' == ', '=')
inoremap <buffer> <expr> <S-=> smartchr#loop(' + ', '+')
inoremap <buffer> <expr> - smartchr#loop('-', ' - ')
inoremap <buffer> <expr> , smartchr#loop(', ', ',')
inoremap <buffer> <expr> . smartchr#loop('.', '<%=  %>', '<%  %>')

"{を続けて打鍵していくと以下のようになります。
"{
"#{
"{{{
"{
"#{
"{{{



