language en_US.UTF-8 "��vim����ΪӢ�Ľ���

set nocp " ʹVIM�����ڲ�����ģʽ��
filetype plugin indent on " �����ļ������Զ�ʶ�������ļ����Ͳ������������ļ����͵��Զ�����
let g:mapleader=";"  "�����ݼ���ǰ׺����<Leader>
set foldmethod=indent "ѡ������۵�����
set foldlevel=100 "����vimʱ��Ҫ�Զ��۵�����

set encoding=utf-8
set termencoding=gb18030
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

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
              " B ��ʾ�����кϲ�Ϊһ�е�ʱ�򣬺����뺺�ּ䲻Ҫ���ո�

" Display related
set t_Co=256
set nu " ��ʾ�к�
set ru " �򿪱��,��ʾ�С��С��ٷֱȵ�״̬
syntax on " �����ؼ�����ɫ
colorscheme darkburn " ��������
set guifont=Bitstream_Vera_Sans_Mono:h10:cANSI " ����Ӣ������
set gfw=��Բ:h10.5:cGB2312 " ������������
set cursorline "�������������
set incsearch " ������������, ��ִ��ǰԤ����һ��ƥ��

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
" �������ҿ���
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l> 
nnoremap <silent> <F12> :TlistToggle<CR>
nnoremap <silent> <F11> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>q :q<CR>
nnoremap <silent> <Leader>cn :cn<CR>
nnoremap <silent> <Leader>cp :cp<CR>
nnoremap <silent> <Leader>co :copen<CR>
nnoremap <silent> <Leader>cc :cclose<CR>
nnoremap <C-f> :vimgrep 
nnoremap <Space> i<Space><Esc>l
nnoremap wm :WMToggle<CR>  
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

call pathogen#infect()

""""""""""""""""""" cscope """"""""""""""""""""""
set cscopequickfix=s-,c-,d-,i-,t-,e- "��cscope�Ĳ�ѯ��������quickfix����
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
let Tlist_Use_Right_Window=1 " ʹ�������ұ�

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

