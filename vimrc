"
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"<F1>
"<F2>       "撤销操作
"<F3>       "关闭所有的折叠
"<F4>       "展开所有的折叠
"<F5>       "QuickRun
"<F6>       "打开/关闭目录浏览
"<F7>       "打开/关闭标签浏览
"<F8>       "切换粘贴模式
"<F9>       "多光标编辑
"<F10>      "Ag 搜索 
"<F11>
"<F12>
"
"<space>    "折叠代码
"
"<Ctrl +  F11>      "Gui隐藏UI开关
"
"""""" <<<<<<< 基础设置  >>>>>>>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set helplang=cn                 "设置中文帮助文档
set nocompatible	            "关闭与vi的一致性兼容
set t_Co=256                    "设置终端色彩
set noswapfile		            "禁止生成临时文件
set wildmenu                    "vim命令输入时提示菜单增强模全
"set wildmode=list:longest       "vim命令行增强模式list
set nowrap                      "禁止折行"
"set history=50   	            "保存历史命令
set nobackup                    "禁止备份文件"

set hlsearch                    "高亮显示搜索结果
set incsearch                   "边输入快速搜索
set showmatch                   "高亮匹配括号
set matchtime=2                 "高亮显示时间"
set ignorecase		            "搜索忽略大小写

set mouse=a		                "允许所有模式鼠标
"set mouse=v                     "允许Visual mode 鼠标使用  
set clipboard=unnamed	        "允许访问系统剪切板
set backspace=2		            "允许退格键使用
set scrolloff=7                 "滚动的时候 上下的间距为7
set pastetoggle=<F8>

set laststatus=2				"总是显示状态栏
set showcmd		                "显示未完成的命令
set showmode		            "显示当前的模式
set ruler		                "显示右下角显示光标位置
set nu			                "显示行号
set cursorline                  "高亮显示当前行/列
"set cursorcolumn

set expandtab                   "设置缩进,空格代替Tab
set tabstop=4
set sts=4
set softtabstop=4
set shiftwidth=4
set fileformats=unix,dos,mac    "使用unix 作为标准的文件类型"


set autoindent
set autoread		            "文件修改后自动载入
set autowrite		            "自动保存
set autochdir 		            "打开文件自动切换到目录下  nerdtree

set splitbelow		            "允许分屏 vs,sp
set splitright

set magic                       "设置magic  正则规则

set noerrorbells                "禁止vim的的错误声音等"
set novisualbell
set t_vb=
set tm=500


"使用vim方向键来切换编辑窗口 Ctrl+H/J/K/L
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

filetype indent off              "根据文件自动缩进
filetype off                    "关闭文件类型检测


"当Gui启动的时候取消界面多余显示 F11 控制开关
if has("gui_running")
    set guioptions-=m
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    nmap <silent> <c-F11> :if &guioptions =~# 'm' <Bar>
        \set guioptions-=m <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=r <Bar>
        \set guioptions-=L <Bar>
     \else <Bar>
        \set guioptions+=m <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=r <Bar>
        \set guioptions+=L <Bar>
    \endif<CR>
endif


"PEPE python缩进
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |


"缩进设置
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |


""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> 编码方式字体设置
""""""""""""""""""""""""""""""""""""""""""""
"参考: https://github.com/ryanoasis/nerd-fonts  图标字体设置

"set ambiwidth=double                                        "设置中文显示双字节的宽度
let $LANG='en'                                              "设置为英文显示
set langmenu=en
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,latin-1,gbk,gb2312,cp936,chinese 	"设置编码格式
let &termencoding=&encoding		                "设置编码方式
let g:rehash256 = 1			                    "设置vim的背景接近终端



if has("mac") || has("macunix")
    set guifont=LiberationMonoPowerline\ NF:h12
elseif has("win32") || has("win64")
    set guifont=DroidSansMonoForPowerline\ NF:h8
    source $VIMRUNTIME/delmenu.vim                          "gvim 菜单中文乱码问题
    source $VIMRUNTIME/menu.vim
    language messages zh_CN.utf-8                           "gvim 提示信息中文乱码问题
elseif has("gui_gtk2")
    set guifont=Liberation\ Mono\ for\ Powerline\ 12
elseif has("linux")
    set guifont= Liberation\ Mono\ for\ Powerline\ 12
elseif has("unix")
    set guifont=Liberation\ Mono\ for\ Powerline:h12
endif



""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> 语法高亮 & 主题设置
""""""""""""""""""""""""""""""""""""""""""""
let python_highlight_all=1

syntax enable                   "允许自定义语法
syntax on                       "开启语法高亮
colorscheme molokai             "vim主题



"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""" <<<<<<<  插件设置 >>>>>>>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> Airline 设置
""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="luna"		                "主题设置
let g:airline_powerline_fonts = 1                       "显示powerline字体补丁
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#tabline#switch_buffers_and_tabs = 1

let g:airline#extensions#syntastic#enabled = 1


let g:airline#extensions#tabline#buffer_idx_mode = 1    "显示Buffer的列标,快捷键切换bufflist"
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab



""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> Tagbar  设置
""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F7> :TagbarToggle<C-R>                        "打开/关闭标签浏览


""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> Nerdtree  目录浏览设置
""""""""""""""""""""""""""""""""""""""""""""
let g:nerdtree_tabs_open_on_console_startup = 0	        "vim开启nerdtree
let g:nerdtree_tabs_open_on_gui_startup = 0				"GuiVim开启nerdtree
let g:nerdtree_tabs_no_startup_for_diff = 1				"当diff启动时不启动nerdtree
let g:nerdtree_tabs_smart_startup_focus = 2				"当启动时编辑区域自动获取焦点
let g:nerdtree_tabs_autofind = 1			    		"自动选择当前选中的文件
let g:nerdtree_tabs_autoclose = 1			    		"关闭当前的tab
let NERDTreeShowBookmarks=0                     		"显示书签
let NERDTreeIgnore=['\.pyc$', '\~$']					"隐藏pyc文件
let NERDTreeWinSize=27                          		"设置NerdTree 窗口宽度
let NERDTreeMinimalUI=1                                 "隐藏书签和help文档
let NERDTreeAutoDeleteBuffer=1                          "删除文件时候，删除Buffer
nnoremap <F6> :NERDTreeToggle<C-R>                      "打开/关闭目录浏览


""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> Multi_cursorM 多光标编辑设置
""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_start_key='<F9>'			    "多光标编辑
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-m>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'



""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> Ctrlp 搜索设置
""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<C-p>'                       "Ctrlp超级搜索
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'


if has("mac") || has("macunix") || has("unix") || has("Linux")
    set wildignore+=*/tmp/*,*.so,*.swp,*.zip                " MacOSX/Linux   Ctrl超级搜索
    let g:ctrlp_user_command = 'find %s -type f'            " MacOSX/Linux
elseif has("win32") || has("win64")
    set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe             " Windows
    let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'      " Windows
endif


""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> Ag 搜索定位设置
""""""""""""""""""""""""""""""""""""""""""""
let g:ag_working_path_mode="r"                  "Ag搜索设置
nnoremap <F10> :Ag <C-R>                          



""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> Gundo 撤销操作
""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F2> :GundoToggle<C-R>



""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> indentLine 缩进指示线设置
""""""""""""""""""""""""""""""""""""""""""""
"缩进指示线"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1



""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> SimpylFold 代码折叠设置
""""""""""""""""""""""""""""""""""""""""""""
let g:SimpylFold_docstring_preview=1            "代码折叠显示字符串
let g:SimpylFold_fold_import = 0

nnoremap <space> za                             "折叠/展开代码
nnoremap <F3> zM                                "关闭所有的折叠
nnoremap <F4> zR                                "开启所有的折叠

set foldmethod=indent	                        "根据缩进进行代码折叠
set foldmethod=syntax                           "根据语法进行代码折叠
set foldenable                                  "Vim启动,关闭代码折叠foldenable  nofoldenable
set foldlevel=99



""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> AutoPairs 自动补全一对符号设置
""""""""""""""""""""""""""""""""""""""""""""
let g:AutoPairsFlyMode = 0                                  "自动补全一对符号
let g:AutoPairsShortcutBackInsert = '<M-b>'



""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> Ycm  代码自动补全设置
""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_python_binary_path = '/Library/Frameworks/Python.framework/Versions/2.7/bin/python'
let g:ycm_autoclose_preview_window_after_completion=1   "关闭补全窗口的出现
let g:ycm_min_num_of_chars_for_completion=1             "从第一个字符就开始匹配了
let g:ycm_collect_identifiers_from_tags_files=1         "开启标签引擎
let g:ycm_cache_omnifunc=0                              "禁止匹配缓存
let g:ycm_seed_identifiers_with_syntax=1                "语法关键字补全

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>      "Ycm跳转到定义的快捷键



""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> UltiSnips 代码片段设置
""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<leader><Tab>"    "代码片段设置
let g:UltiSnipsListSnippets = '<leader><C-Tab>'
let g:UltiSnipsJumpForwardTrigger="<leader><M-Tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><S-Tab>"
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsSnippetDirectories=['UltiSnips'] "设置运行环境下的文件夹名字即可 set runtimepath  查看
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips' "设定代码片的路径，可以自定义可以第三方的


""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> QuickRun 执行脚本插件
""""""""""""""""""""""""""""""""""""""""""""
"map <leader>r :QuickRun<CR>
noremap <F5> :QuickRun<CR>
inoremap <F5> <Esc>:QuickRun<CR>



""""""""""""""""""""""""""""""""""""""""""""
"""" >>>>>>> Hexo vim 插件 
""""""""""""""""""""""""""""""""""""""""""""
"输入你的本地blog文件夹地址
let g:hexoProjectPath="You Blog Path"


"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""" <<<<<<<  插件管理 >>>>>>>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置包括vundle和初始化相关的runtime path

if has("mac") || has("macunix") || has("unix") || has("Linux")
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
	Plugin 'valloric/youcompleteme'			"vim 自动补全提示
	Plugin 'sirver/ultisnips'			    "vim 代码模块片段
	Plugin 'honza/vim-snippets'			    "~

elseif has("win32") || has("win64")
    set rtp+=$VIM/vimfiles/bundle/Vundle.Vim/
    call vundle#begin('$VIM/vimfiles/bundle/')
endif


" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'			"vim 插件管理
Plugin 'tomasr/molokai'				    "vim 主题
Plugin 'vim-airline/vim-airline'		"vim 状态栏
Plugin 'vim-airline/vim-airline-themes' "vim 状态栏主题
Plugin 'majutsushi/tagbar'			    "vim tagbar标签显示
Plugin 'scrooloose/nerdtree'			"vim 文件目录浏览
Plugin 'terryma/vim-multiple-cursors'	"vim 多光标编辑
Plugin 'kien/ctrlp.vim'                 "vim 超级搜索功能
Plugin 'rking/ag.vim'				    "vim ag搜索查询定位
Plugin 'sjl/gundo.vim'                  "vim 撤销操作显示
Plugin 'tpope/vim-fugitive'			    "vim git插件
Plugin 'yggdroot/indentline'            "vim 缩进指示线条
Plugin 'tmhedberg/SimpylFold'           "vim 代码折叠
Plugin 'jiangmiao/auto-pairs'           "vim 自动补全符号
Plugin 'thinca/vim-quickrun'            "vim 代码执行插件
Plugin 'ryanoasis/vim-devicons'         "vim icon
Plugin 'hiphopcoders/hexo.vim'

call vundle#end()
filetype plugin indent on    "必须加载vim自带和插件相应的语法和文件类型相关脚本
