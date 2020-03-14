#!/bin/bash

cp ~/.zshrc ~/OpenSource/my-linux/zsh &
echo "backup .zshrc"
cp -r ~/.config/nvim/* ~/OpenSource/my-linux/config/nvim &
echo "backup nvim-config"
cp -r ~/.config/ranger/* ~/OpenSource/my-linux/config/ranger &
echo "back up ranger-config"
cp ~/.gvimrc ~/OpenSource/my-linux/jane &
echo "back up MacVim-config"
cp ~/.myclirc ~/OpenSource/my-linux/jane &
echo "back up mycli-config"
cp /etc/hosts ~/OpenSource/my-linux/etc &
echo "back up hosts"
cp ~/.ipython/profile_default/ipython_config.py &
echo "back up ipython config"
echo "Done"

