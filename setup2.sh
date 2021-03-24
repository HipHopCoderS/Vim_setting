#!/bin/sh

# 安装vim主题
onedark_dir=~/.vim/plugged/onedark.vim
dracula_dir=~/.vim/plugged/dracula

echo -n "选择你想使用的主题（1 or 2）："
echo "1: onedark, 2: dracula"
read name

if [ $name -eq 1 ];then
    if [ ! -d $onedark_dir ];then
        echo "Theme onedark not install "
    else
        cp  -r  $onedark_dir/autoload  $onedark_dir/colors  ~/.vim/
        cp  ./vimrc_onedark   ~/.vimrc
        echo "Theme Onedark install Success!"
    fi
elif [ $name -eq 2 ];then
    if [ ! -d $dracula_dir ];then
        echo "Theme dracula  not install "
    else
        cp  -r  $dracula_dir/autoload  $dracula_dir/colors  ~/.vim/
        cp  ./vimrc_dracula   ~/.vimrc
        echo "Theme dracula install Success!"
    fi
else
    echo "请选择正确的主题编号"
fi
