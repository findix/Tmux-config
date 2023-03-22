# this shell is used for initialize the tmux-config

#!/bin/bash

trap exit ERR
if [ -d $HOME/tmux-config ]
then
    cp -r $HOME/tmux-config $HOME/.tmux
fi

ln -s $HOME/.tmux/.tmux.conf $HOME/.tmux.conf

cd ~/.tmux && git submodule init && git submodule update

tmux source-file ~/.tmux.conf