#!/bin/sh

theme_dir=~/.vim/plugged/onedark.vim
if [[ ! -d $theme_dir ]];then
    echo "Theme onedark not install "
else
    cp  -r  $theme_dir/autoload  $theme_dir/colors  ~/.vim/
    echo "Success!"
fi
