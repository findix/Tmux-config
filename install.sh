# this shell is used for initialize the tmux-config

#!/bin/bash

trap exit ERR
if [ -d $HOME/tmux-config ]
then
    cp -r $HOME/tmux-config $HOME/.tmux
fi

ln -s $HOME/.tmux/.tmux.conf $HOME/.tmux.conf

# install plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
bash ~/.tmux/plugins/tpm/bin/install_plugins