set nocp
set sw=4
set ts=4
set nu

colorschem desert

let g:SuperTabDefaultCompletionType="context"

" pathogen plugin
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" vim-makedown
let g:vim_markdown_folding_disabled=1 " 禁止折叠

