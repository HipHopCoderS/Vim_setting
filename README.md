# Vim 配置文件，适配windows,OSX,Linux
Font: SauceCodePro Nerd Font   size:13
Theme: onedark


前提：已经安装vim

# SETP
1. 首先执行`setup1.sh` 脚本安装 vim plug, 显示安装完成后打开vim
2. 打开vim ，执行  `:PlugInstall`  进行插件的安装
3. 安装主题, 执行 `setup2.sh`
4. 安装字体文件即可  `SauceCodePro Nerd Font`


# User plug
```` vim
call plug#begin('~/.vim/plugged')
    Plug 'shougo/vimshell.vim'              "vim shell
    Plug 'Shougo/vimproc.vim',{'do':'make'} "vim shell depends vimproc
	Plug 'valloric/youcompleteme'           "vim 自动补全提示
	Plug 'sirver/ultisnips'                 "vim 代码模块片段
	Plug 'honza/vim-snippets'			    "~
    Plug 'joshdick/onedark.vim'             "vim主题
    Plug 'vim-airline/vim-airline'		    "vim 状态栏
    Plug 'vim-airline/vim-airline-themes'   "vim 状态栏主题
    Plug 'duff/vim-trailing-whitespace'     "vim 空格空行修复
    Plug 'majutsushi/tagbar'			    "vim tagbar标签显示
    Plug 'scrooloose/nerdtree'			    "vim 文件目录浏览
    Plug 'Xuyuanp/nerdtree-git-plugin'      "vim git tree
    Plug 'terryma/vim-multiple-cursors'	    "vim 多光标编辑
    Plug 'kien/ctrlp.vim'                   "vim 超级搜索功能
    Plug 'szw/vim-ctrlspace'                "vim CtrlpSpace
    Plug 'rking/ag.vim'				        "vim ag搜索查询定位
    Plug 'sjl/gundo.vim'                    "vim 撤销操作显示
    Plug 'tpope/vim-fugitive'			    "vim git插件
    Plug 'yggdroot/indentline'              "vim 缩进指示线条
    Plug 'tmhedberg/SimpylFold'             "vim 代码折叠
    Plug 'jiangmiao/auto-pairs'             "vim 自动补全符号
    Plug 'thinca/vim-quickrun'              "vim 代码执行插件
    Plug 'ryanoasis/vim-devicons'           "vim icon
    Plug 'hiphopcoders/hexo.vim'
    Plug 'godlygeek/tabular'                "vim markdown
    Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/mathjax-support-for-mkdp'  "vim 实时预览
    Plug 'iamcco/markdown-preview.vim'
    Plug 'pangloss/vim-javascript'          "vim javascript
    Plug 'w0rp/ale'                         "vim ale 语法检查
    Plug 'gregsexton/gitv'                  "vim git log
    Plug 'christoomey/vim-tmux-navigator'   "vim tmux 导航
    Plug 'edkolev/tmuxline.vim'             "vim statusline
    Plug 'benmills/vimux'                   "vim tmmux
call plug#end()
```


# Issue
- 如果主题颜色没有显示
    把 `set termguicolors` 注释掉
- youcomplete 提示代码插件记得安装完成后进行编译,并且修改python的路径

