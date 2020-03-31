#!/bin/bash

cp ~/.zshrc ../zsh/zshrc &
cp ~/.zimrc ../zsh/zimrc &
echo "backup zsh-config"
cp -r ~/.config/nvim/* ../config/nvim &
echo "backup nvim-config"
cp -r ~/.config/ranger/* ../config/ranger &
echo "back up ranger-config"
cp /etc/hosts ../etc/hosts &
echo "back up hosts"
cp ~/.ipython/profile_default/ipython_config.py ../ipython/profile_default/ipython_config.py
echo "back up ipython-config"
echo "Done"

