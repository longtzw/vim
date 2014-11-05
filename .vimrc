language en_US.UTF-8 "将vim设置为英文界面

set nocp " 使VIM工作在不兼容模式下
filetype plugin indent on " 开启文件类型自动识别，启用文件类型插件，启用针对文件类型的自动缩进
let g:mapleader=";"  "定义快捷键的前缀，即<Leader>
set foldmethod=indent "选择代码折叠类型
set foldlevel=100 "启动vim时不要自动折叠代码

set encoding=utf-8
"set termencoding=gb18030
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" Tab related
set sw=4           " 自动缩进的时候，缩进尺寸为 4 个空格
set ts=4           " tab宽度为4个空格
set et             " 编辑时将tab替换为空格
set smarttab       " 当使用et将tab替换为空格之后，按下一个tab键就能插入4个空格，但要想删除这4个空格，就得按4下Backspace，很不方便。
                   " 设置smarttab之后，就可以只按一下Backspace就删除4个空格了
set expandtab
set autoindent

" Format related
set tw=120    " 超过120列自动换行
set lbr       " 不在单词中间断行
set fo+=mB    " 打开断行模块对亚洲语言支持。
              " m 表示允许在两个汉字之间断行，即使汉字之间没有出现空格。
              " B 表示将两行合并为一行的时候，汉字与汉字间不要补空格

" Display related
set t_Co=256
set nu " 显示行号
set ru " 打开标尺,显示行、列、百分比等状态
syntax on " 开启关键字上色
colorscheme darkburn " 设置主题
set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI " 设置英文字体
set gfw=幼圆:h10.5:cGB2312 " 设置中文字体
set cursorline "高亮光标所在行
set incsearch " 开启增量查找, 在执行前预览第一处匹配

" Edit related
set backspace=indent,eol,start
set whichwrap=b,s,<,>,[,]
set selection=inclusive " 指定在选择文本时，光标所在位置也属于被选中的范围

" Misc
set autoread " 文件内容改变时自动加载
set wildmenu " 在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来

"Map related
nnoremap <F3> <C-o>
nnoremap <F4> <C-i>
" 高亮查找开关
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l> 
nnoremap <silent> <S-F12> :TlistToggle<CR>
nnoremap <silent> <F12> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>cn :cn<CR>
nnoremap <silent> <Leader>cp :cp<CR>
nnoremap <silent> <Leader>co :copen<CR>
nnoremap <silent> <Leader>cc :cclose<CR>
nnoremap <Right> <C-D>
nnoremap <Left> <C-U>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-f> :vimgrep 
nnoremap <Tab> :tag 
nnoremap <Space> i<Space><Esc>l
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

""""""""""""""""""" cscope """"""""""""""""""""""
set cscopequickfix=s-,c-,d-,i-,t-,e- "把cscope的查询结果输出到quickfix窗口
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set nocsverb

    if filereadable("cscope.out")
        cs add cscope.out
    endif

    "set csverb
endif

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0 

"taglist
let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1 " 使窗口在右边

"SuperTab
let g:SuperTabDefaultCompletionType="context"  

"OmniCppComplete
set completeopt=menu

"Winmanager
let g:NERDTree_title="[NERDTree]"  
let g:winManagerWindowLayout="NERDTree|TagList"  

"indent_guide
let g:indent_guides_guide_size=1

function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  

function! NERDTree_IsValid()  
    return 1  
endfunction  

" vim-powerline
let g:Powerline_symbols = 'fancy'


