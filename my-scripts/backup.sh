#!/bin/bash

cp ~/.zshrc ~/OpenSource/my-linux/zsh &
echo "backup .zshrc"
cp -r ~/.config/nvim/* ~/OpenSource/my-linux/config/nvim &
echo "backup nvim-config"
cp -r ~/.config/ranger/* ~/OpenSource/my-linux/config/ranger &
echo "back up ranger-config"
cp ~/.gvimrc ~/OpenSource/my-linux/jane &
echo "back up MacVim-config"
cp ~/.mycli ~/OpenSource/my-linux/jane &
echo "back up mycli-config"
echo "Done"

