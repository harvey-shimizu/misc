#!/usr/bin/zsh

export MISC_MYCONFIG="$HOME/src/myconfig"

echo "cp .ctags $MISC_MYCONFIG"
cp $HOME/.ctags $MISC_MYCONFIG

echo "cp mytas $MISC_MYCONFIG"
cp $HOME/mytags $MISC_MYCONFIG

echo "cp $HOME/.vimrc $MISC_MYCONFIG"
cp $HOME/.vimrc $MISC_MYCONFIG

echo "cp $HOME/.zshrc $MISC_MYCONFIG"
cp $HOME/.zshrc $MISC_MYCONFIG

echo "cp -r $HOME/.vim_runtime/vimrcs/*.vim $MISC_MYCONFIG"
cp -r $HOME/.vim_runtime/vimrcs $MISC_MYCONFIG 

echo "cp $HOME/.vim_runtime/my_configs.vim $MISC_MYCONFIG"
cp $HOME/.vim_runtime/my_configs.vim $MISC_MYCONFIG 
$HOME
#echo "cp -r $HOME/.vim $MISC_MYCONFIG" 
#cp -r $HOME/.vim $MISC_MYCONFIG 

