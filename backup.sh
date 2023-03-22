# this shell is used for backup the tmux-config

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