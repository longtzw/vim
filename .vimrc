set nocp
set sw=4
set ts=4
set nu

colorschem desert

nmap <tab> v>
nmap <s-tab> v<

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

let g:SuperTabDefaultCompletionType="context"

" pathogen plugin
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" vim-makedown
let g:vim_markdown_folding_disabled=1 " 禁止折叠

