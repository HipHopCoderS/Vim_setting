"""""""""""""""""""
""""""基础设置"""""""
"""""""""""""""""""
set shortmess=atI       "启动不显示援助乌干达
set nocompatible	"关闭与vi的一致性兼容
set history=50   	 "保存历史命令
set ignorecase		"搜索忽略大小写
set t_Co=256            "设置终端色彩
set mouse=a		"允许鼠标滚
set clipboard+=unnamed	"允许访问系统剪切板
set noswapfile		"禁止生成临时文件
set guifont=Droid\ Sans\ Mono\ Dotted\ for\ Powerline:h12	"设置GuiVim字体
set showcmd		"显示未完成的命令
set showmode		"显示当前的模式
set ruler		"右下角显示光标位置
set nu			"显示行号

set statusline+=%#warningmsg#			"语法检查
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"set laststatus=2

set autoindent		"换行具有相同的缩进
set autoread		"文件修改后自动载入
set autowrite		"自动保存
set autochdir 		"打开文件自动切换到目录下  nerdtree

set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936 	"设置编码格式
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8


set foldmethod=indent	"允许折叠使用空格
set foldlevel=99

set splitbelow		"允许分屏
set splitright

"""""""""""""""""""
"""""插件设置""""""
"""""""""""""""""""
let g:airline_theme="papercolor"		"主题设置
let g:airline_powerline_fonts = 1   "显示powerline字体补丁
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let &termencoding=&encoding		"设置编码方式
let g:rehash256 = 1			"设置vim的背景接近终端

let g:ctrlp_map = '<c-p>'	"CtrlP查找配置
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

let g:instant_markdown_autostart = 0

let g:nerdtree_tabs_open_on_console_startup = 1		"vim开启nerdtree
let g:nerdtree_tabs_open_on_gui_startup = 1		"GuiVim开启nerdtree
let g:nerdtree_tabs_no_startup_for_diff = 1		"当diff启动时不启动nerdtree
let g:nerdtree_tabs_smart_startup_focus = 1		"当启动时编辑区域自动获取焦点
let g:nerdtree_tabs_autofind = 0			"自动选择当前选中的文件
let g:nerdtree_tabs_autoclose = 1			"关闭当前的tab
let NERDTreeIgnore=['\.pyc$', '\~$']			"隐藏pyc文件

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = '✗'	"set error or warning signs
let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_python_checker="flake8,pyflakes,pep8,pylint"
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_markdown_checkers = ['mdl']

let g:ycm_python_binary_path = 'python'
let g:ycm_autoclose_preview_window_after_completion=1


let g:NERDCompactSexyComs = 1		"紧凑注释



"""""""""""""""""""
"""""按键映射"""""""
"""""""""""""""""""
"使用vim方向键来切换编辑窗口 Ctrl+H/J/K/L
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" 允许用空格来折叠
nnoremap <space> za

nnoremap <F8> :TagbarToggle<C-R>

nnoremap <C-\> :NERDTreeToggle<C-R>




"""""""""""""""""""
""""""特殊配置"""""
"""""""""""""""""""
filetype off                  " 关闭文件类型检测
filetype plugin on
syntax enable
syntax on
colorscheme molokai

"覆盖一个文件时，保存备份
if has("vms")
   set nobackup
elsd
   set backup
endif

autocmd BufNewFile,BufReadPost *.md set filetype=markdown	"markdown设置



"""""""""""""""""""
"""""插件管理""""""
"""""""""""""""""""
" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'			"插件管理
Plugin 'scrooloose/nerdtree'			"文件目录浏览
Plugin 'jistr/vim-nerdtree-tabs'		"文件目录浏览插件
Plugin 'tpope/vim-surround'			"vim编辑辅助符号标签修改
Plugin 'scrooloose/nerdcommenter'		"vim 注释功能
Plugin 'tomasr/molokai'				"vim 主题
Plugin 'vim-airline/vim-airline'		"vim 状态栏
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'				"vim 查询
Plugin 'tpope/vim-markdown'			"vim markdown支持
Plugin 'suan/vim-instant-markdown'		"vim markdown实时预览
Plugin 'scrooloose/syntastic'			"vim 语法检查
Plugin 'majutsushi/tagbar'			"vim tagbar标签显示
Plugin 'bronson/vim-trailing-whitespace'	"vim 空格自动修复
Plugin 'valloric/youcompleteme'			"vim 自动补全提示
Plugin 'tpope/vim-fugitive'			"vim git插件

call vundle#end()
filetype plugin indent on    "必须加载vim自带和插件相应的语法和文件类型相关脚本
