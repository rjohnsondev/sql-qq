" store and remove current syntax value
let old_syntax = b:current_syntax
unlet b:current_syntax

syn include @pgsql syntax/pgsql.vim
unlet b:current_syntax

syn region sqlBlock matchgroup=quasiQuote start=/\[\$\?sql|/ end=/|\]/ contains=@pgsql keepend

hi def link quasiQuote Underlined

" restore current syntax value
let b:current_syntax = old_syntax
