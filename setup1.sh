#!bin/sh


# 安装vim扩展插件
plug_dir=~/.vim/autoload/plug.vim
if [[ ! -f $plug_dir ]];then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo "Plug aledy installed!"
fi
cd $PWD
cp ./.vimrc  ~/.vimrc
echo "Deploy success, please open vim, then run ':PlugInstall'
