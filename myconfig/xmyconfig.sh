#!/usr/bin/sh

declare option="${1:-}"
declare MISC_MYCONFIG="${2:-$PWD}"

if [ "$option" != "pull" ] && [ "$option" != "push" ] ; then
    echo "Nothing to do. Please input an option [and a directory]."
    exit 1
fi
if [ "$(uname)" == 'Darwin' ]; then
  OS='Mac'
#elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
elif [ "$(uname -s | cut -d'_' -f 1)" == 'Linux' ]; then
  OS='Linux'
#elif [ "$(expr substr $(uname -s) 1 10)" == 'MINGW32_NT' ]; then
elif [ "$(uname -s | cut -d'_' -f 1)" == 'CYGWIN' ]; then
  OS='Cygwin'
else
  echo "Your platform ($(uname -a)) is not supported."
  exit 1
fi

echo "OS       : $OS"
echo "option   : $option"
echo "directory: $MISC_MYCONFIG"

if [ "$option" = "pull" ]; then

    if [ -f $HOME/.ctags ]; then
        echo "cp $HOME/.ctags $MISC_MYCONFIG"
        cp -f $HOME/.ctags $MISC_MYCONFIG
    else
        echo ".ctags file is not found"
    fi

    if [ -f $HOME/mytags ]; then
        echo "cp $HOME/mytags $MISC_MYCONFIG"
        cp -f $HOME/mytags $MISC_MYCONFIG
    else
        echo "mytags file is not found"
    fi

    if [ -f $HOME/.vimrc ]; then
        echo "cp $HOME/.vimrc $MISC_MYCONFIG"
        cp -f $HOME/.vimrc $MISC_MYCONFIG
    else
        echo ".vimrc file is not found"
    fi

    if [ -f $HOME/.bashrc ] && [ "$OS" =  "Cygwin" ]; then
        echo "cp $HOME/.bashrc $MISC_MYCONFIG"
        cp $HOME/.bashrc $MISC_MYCONFIG

    elif [ -f $HOME/.zshrc ] && [ "$OS" = "Mac" ]; then
        echo "cp $HOME/.zshrc $MISC_MYCONFIG"
        cp $HOME/.zshrc $MISC_MYCONFIG

    else
        echo "Both .bashr and .zshrc files are not found"
    fi

    if [ -d $HOME/vimrcs ]; then
        echo "cp -fr $HOME/.vim_runtime/vimrcs $MISC_MYCONFIG"
        cp -fr $HOME/.vim_runtime/vimrcs $MISC_MYCONFIG/
    else
        echo "vimrcs directory is not found"
    fi

    if [ -f $HOME/.vim_runtime/my_configs.vim ]; then
        echo "cp $HOME/.vim_runtime/my_configs.vim $MISC_MYCONFIG"
        cp -f $HOME/.vim_runtime/my_configs.vim $MISC_MYCONFIG
    else
        echo "my_configs file is not found"
    fi

elif [ "$option" = "push" ]; then

    if [ -f $MISC_MYCONFIG/.ctags ]; then
        echo "cp -r $MISC_MYCONFIG/.ctags $HOME/.ctags"
        cp -f $MISC_MYCONFIG/.ctags $HOME/.ctags
    else
        echo ".ctags file is not found"
    fi

    if [ -f $MISC_MYCONFIG/mytags ]; then
        echo "cp -r $MISC_MYCONFIG/mytags $HOME/mytags"
        cp -f $MISC_MYCONFIG/mytags $HOME/mytags
    else
        echo "mytags file is not found"
    fi

    if [ -f $MISC_MYCONFIG/.vimrc ]; then
        echo "cp -r $MISC_MYCONFIG/.vimrc $HOME/.vimrc"
        cp -f $MISC_MYCONFIG/.vimrc $HOME/.vimrc
    else
        echo ".vimrc file is not found"
    fi

    if [ -f $HOME/.bashrc ] && [ "$OS" =  "Cygwin" ]; then
        echo "cp -r $MISC_MYCONFIG/.bashrc $HOME/.bashrc"
        cp -f $MISC_MYCONFIG $HOME/.bashrc

    elif [ -f $HOME/.zshrc ] && [ "$OS" = "Mac" ]; then
        echo "cp -r $MISC_MYCONFIG/.zshrc $HOME/.zshrc"
        cp -f $MISC_MYCONFIG/.zshrc $HOME/.zshrc

    else
        echo "Both .bashr and .zshrc files are not found"
    fi

    if [ -d $MISC_MYCONFIG/vimrcs ]; then
        echo "cp -fr $MISC_MYCONFIG/vimrcs $HOME/.vim_runtime/"
        cp -fr $MISC_MYCONFIG/vimrcs $HOME/.vim_runtime/
    else
        echo "vimrcs directory is not found"
    fi

    if [ -f $MISC_MYCONFIG/my_configs.vim ]; then
        echo "cp -r $MISC_MYCONFIG/my_configs.vim $HOME/.vim_runtime/my_configs.vim"
        cp -f $MISC_MYCONFIG/my_configs.vim $HOME/.vim_runtime/my_configs.vim
    else
        echo "my_configs file is not found"
    fi

fi
