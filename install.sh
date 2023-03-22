# this shell is used for initialize the tmux-config

#!/bin/bash

trap exit ERR
if [ -d $HOME/.tmux  ]
then
    echo .tmux already exist
    mv $HOME/.tmux $HOME/.tmux.bak
fi

if [ -e $HOME/.tmux.conf  ]
then
    echo .tmux.conf already exist
    mv $HOME/.tmux.conf $HOME/.tmux.conf.bak
fi

if [ -d $HOME/tmux-config ]
then
    cp -r $HOME/tmux-config $HOME/.tmux
fi

ln -s $HOME/.tmux/.tmux.conf $HOME/.tmux.conf

cd ~/.tmux && git submodule init && git submodule update

tmux source-file ~/.tmux.conf