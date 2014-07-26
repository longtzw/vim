set nocp " ʹVIM�����ڲ�����ģʽ��
filetype plugin indent on " �����ļ������Զ�ʶ�������ļ����Ͳ������������ļ����͵��Զ�����
let g:mapleader=";"  "�����ݼ���ǰ׺����<Leader>

set foldmethod=indent "ѡ������۵�����
set foldlevel=100 "����vimʱ��Ҫ�Զ��۵�����
"set nocscopeverbose 

" Tab related
set sw=4           " �Զ�������ʱ�������ߴ�Ϊ 4 ���ո�
set ts=4           " tab���Ϊ4���ո�
set et             " �༭ʱ��tab�滻Ϊ�ո�
set smarttab       " ��ʹ��et��tab�滻Ϊ�ո�֮�󣬰���һ��tab�����ܲ���4���ո񣬵�Ҫ��ɾ����4���ո񣬾͵ð�4��Backspace���ܲ����㡣
                   " ����smarttab֮�󣬾Ϳ���ֻ��һ��Backspace��ɾ��4���ո���
set expandtab
set autoindent

" Format related
set tw=120    " ����120���Զ�����
set lbr       " ���ڵ����м����
set fo+=mB    " �򿪶���ģ�����������֧�֡�
              " m ��ʾ��������������֮����У���ʹ����֮��û�г��ֿո�
			  " B ��ʾ�����кϲ�Ϊһ�е�ʱ�򣬺����뺺��֮�䲻Ҫ���ո�

" Encoding related
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set langmenu=zh_CN.UTF-8 " ʹ�����Ĳ˵�����ʹ�� UTF-8 ���롣���û�����Ļ����ڷ� UTF-8 ��ϵͳ���� Windows �£����� UTF-8 �� encoding ��˵�������
source $VIMRUNTIME/delmenu.vim " ����Ҽ��˵����������
language message zh_CN.UTF-8 " ʹ��������ʾ��Ϣ����ʹ�� UTF-8 ���롣���û�����Ļ����ڷ� UTF-8 ��ϵͳ���� Windows �£����� UTF-8 �� encoding ��ϵͳ��ʾ������
set ambiwidth=double

" Display related
set nu " ��ʾ�к�
set ru " �򿪱��,��ʾ�С��С��ٷֱȵ�״̬
syntax on " �����ؼ�����ɫ
set guioptions-=m " ����ʾ�˵���
set guioptions-=T " ����ʾ������
colorscheme desert " ��������
set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI " ����Ӣ������
set gfw=��Բ:h10.5:cGB2312 " ������������
set cursorline "�������������

" Edit related
set backspace=indent,eol,start
set whichwrap=b,s,<,>,[,]
set selection=inclusive " ָ����ѡ���ı�ʱ���������λ��Ҳ���ڱ�ѡ�еķ�Χ

" Misc
set autoread " �ļ����ݸı�ʱ�Զ�����
set wildmenu " ������ģʽ��ʹ�� Tab �Զ���ȫ��ʱ�򣬽���ȫ����ʹ��һ��Ư���ĵ��в˵���ʽ��ʾ����


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
let Tlist_Use_Right_Window=1 " ʹ�������ұ�

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

