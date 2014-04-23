"/**
" * @file _vimrc
" * @Desc: 
" * @author Firmy
" * @version 
" * @date 2014-04-22
" */

" disable VI's compatible mode..
set nocompatible
 
set fileencodings=utf-8,gbk,default,latin1
set termencoding=utf-8
set encoding=utf-8
 
" use chinese help
set helplang=cn

"set gui options
if has("gui_running")
set guifont=Consolas:h9
" set color schema
colorscheme desert

endif


:filetype plugin on



"提供快速生成代码段的功能snipMate
"AutoComplPop自动补全功能
"快速生成作者信息authorinfo
let g:vimrc_author='YangYuQun' 
let g:vimrc_email='imfirmy@gmail.com'
let g:vimrc_homepage='www.mingchao.com' 

nmap <F4> :AuthorInfoDetect<cr> 


"设定 windows 下 gvim 启动时最大化
autocmd GUIEnter * simalt ~x





"设置对齐
set autoindent
set smartindent
"第一行设置tab键为4个空格，第二行设置当行之间交错时使用4个空格
set tabstop=4
set shiftwidth=4
"设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

"使用space代替tab.
set expandtab

"设定光标离窗口上下边界 5 行时窗口自动滚动
"set scrolloff=5

"默认区分大小写
"set noignorecase

"设置GVIM默认目录
lcd f:\wwwroot\
"设定文件浏览器目录为当前目录
set bsdir=buffer
"自动切换目录
set autochdir
"保存文件格式
set fileformats=unix,dos
"使得注释换行时自动加上前导的空格和星号
set formatoptions=tcqro


" 设置php
" Enable syntax highlight
syntax enable
 
" Show line number
set nu
 
" show matching bracets
set showmatch
 
" Basic editing options
set expandtab
set shiftwidth=4
 
au FileType html,python,vim,javascript,js setl shiftwidth=4
au FileType html,python,vim,javascript,js setl tabstop=4
au FileType java,php,js setl shiftwidth=4
au FileType java,php,js setl tabstop=4
 
set smarttab
set lbr
set tw=0
 
"Auto indent
set ai
 
" Smart indet
set si
 
" C-style indeting
set cindent
 
" Wrap lines
set wrap



"更多有用的编辑设置虽然不是专门针对编辑.php文件的设置，但这些选项可以让vim更好用，

" Sets how many lines of history VIM har to remember
set history=400
 
" Set to auto read when a file is changed from the outside
set autoread
 
" Have the mouse enabled all the time:
set mouse=a
 
" Do not redraw, when running macros.. lazyredraw
set lz
 
" set 7 lines to the curors - when moving vertical..
set so=7
 
" The commandbar is 2 high
set cmdheight=2
 
" Change buffer - without saving
set hid
 
" Ignore case when searching
" set ignorecase
set incsearch
 
" Set magic on
set magic
 
" No sound on errors.
set noerrorbells
set novisualbell
set t_vb=
 
" How many tenths of a second to blink
set mat=4
 
" Highlight search things
set hlsearch
 
" Turn backup off
set nobackup
set nowb
set noswapfile
 
" smart backspace
set backspace=start,indent,eol
 
" switch buffers with Tab
map <C-Tab> :bn<CR>
map <S-Tab> :bp<CR>

"##########################################
" NERDTree
map <F10> :NERDTreeToggle<CR>

nnoremap <silent> <F3> :Grep<CR>
set modifiable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin configuration
set tags=tags;
set autochdir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taglist
"let Tlist_Ctags_Cmd =  'D:\Program Files (x86)\Vim\ctags\ctags.exe'
let Tlist_Auto_Highlight_Tag = 1  
let Tlist_Auto_Open = 1
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 0
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 40    
let NERDTreeBookmarksFile =$VIM.'NerdBookmarks.txt'
let tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'




" autoload _vimrc
autocmd! bufwritepost _vimrc source %
                                            " lookupfile setting
let g:LookupFile_MinPatLength           = 2 " 最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern    = 0 " 不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1 " 保存查找历史
let g:LookupFile_AlwaysAcceptFirst      = 1 " 回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles          = 0 " 不允许创建不存在的文件
if filereadable(                            " ./filenametags     " ) " 设置tag文件的名字
let g:LookupFile_TagExpr = '                " ./filenametags     " '
endif
"映射LookupFile为,lk
nmap <silent> <leader>lk :LUTags<cr>
"映射LUBufs为,ll
nmap <silent> <leader>ll :LUBufs<cr>
"映射LUWalk为,lw
nmap <silent> <leader>lw :LUWalk<cr>



"let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplorerMoreThanOne=0
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplMapWindowsNavVim=1
let g:miniBufExplMapWindowNavArrows=1

nnoremap <silent> <F12> :A<CR>
nnoremap <silent> <F3> :Grep<CR>

map fg :Dox<cr>
let g:DoxygenToolkit_briefTag_pre = "@Desc: "
let g:DoxygenToolkit_paramTag_pre = "@Param "
let g:DoxygenToolkit_returnTag    = "@Returns "
let g:DoxygenToolkit_blockHeader  = "----------------------------------------------------"
let g:DoxygenToolkit_blockFooter  = "----------------------------------------------------"
let g:DoxygenToolkit_authorName   = "Firmy"
