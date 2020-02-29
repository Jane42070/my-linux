#!/bin/bash

cp ~/.zshrc ~/OpenSource/my-linux/zsh &
echo "backup .zshrc"
cp -r ~/.config/nvim/* ~/OpenSource/my-linux/config/nvim &
echo "backup nvim-config"
echo "Done"
