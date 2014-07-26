set nocp " 使VIM工作在不兼容模式下
filetype plugin indent on " 开启文件类型自动识别，启用文件类型插件，启用针对文件类型的自动缩进
let g:mapleader=";"  "定义快捷键的前缀，即<Leader>

set foldmethod=indent "选择代码折叠类型
set foldlevel=100 "启动vim时不要自动折叠代码
"set nocscopeverbose 

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
			  " B 表示将两行合并为一行的时候，汉字与汉字之间不要补空格

" Encoding related
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set langmenu=zh_CN.UTF-8 " 使用中文菜单，并使用 UTF-8 编码。如果没有这句的话，在非 UTF-8 的系统，如 Windows 下，用了 UTF-8 的 encoding 后菜单会乱码
source $VIMRUNTIME/delmenu.vim " 解决右键菜单乱码的问题
language message zh_CN.UTF-8 " 使用中文提示信息，并使用 UTF-8 编码。如果没有这句的话，在非 UTF-8 的系统，如 Windows 下，用了 UTF-8 的 encoding 后系统提示会乱码
set ambiwidth=double

" Display related
set nu " 显示行号
set ru " 打开标尺,显示行、列、百分比等状态
syntax on " 开启关键字上色
set guioptions-=m " 不显示菜单栏
set guioptions-=T " 不显示工具栏
colorscheme desert " 设置主题
set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI " 设置英文字体
set gfw=幼圆:h10.5:cGB2312 " 设置中文字体
set cursorline "高亮光标所在行

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
nnoremap <silent> <F12> :TlistToggle<CR>
nnoremap <silent> <F11> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>cn :cn<CR>
nnoremap <silent> <Leader>cp :cp<CR>
nnoremap <silent> <Leader>co :copen<CR>
nnoremap <silent> <Leader>cc :cclose<CR>
nnoremap <C-f> :vimgrep 
nnoremap wm :WMToggle<CR>  

"nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>
"nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>
"nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
"nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>
"nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
"nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:copen<CR>
"nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>

" Plugin related
call pathogen#infect()
set tags=tags

""""""""""""""""""" cscope """"""""""""""""""""""
"function Do_CsTag()
"    if(executable("cscope") && has("cscope") )
"        if(has('win32'))
"            silent! execute "!dir /b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
"        else
"            silent! execute "!find . -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.m" -o -name "*.mm" -o -name "*.java" -o -name "*.py" > cscope.files"
"        endif
"        silent! execute "!cscope -Rb"
"        if filereadable("cscope.out")
"            execute "cs add cscope.out"
"        endif
"    endif
"endf
"
"if has("cscope")
"    set cscopequickfix=s-,c-,d-,i-,t-,e-
"    set csto=0
"    set cst
"    set csverb
"endif

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0 

"taglist
let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1 " 使窗口在右边

"OmniCppComplete
set completeopt=menu

"SuperTab
let g:SuperTabDefaultCompletionType="context"  

"Winmanager
let g:NERDTree_title="[NERDTree]"  
let g:winManagerWindowLayout="NERDTree|TagList"  

function! NERDTree_Start()  
	exec 'NERDTree'  
endfunction  

function! NERDTree_IsValid()  
	return 1  
endfunction  

