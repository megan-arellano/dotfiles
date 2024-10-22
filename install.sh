#!/bin/bash

exec > >(tee -i $HOME/dotfiles_install.log)
exec 2>&1
set -x

ln -sf $(pwd)/.zshrc $HOME/.zshrc
ln -sf $(pwd)/.bash_profile $HOME/.bash_profile

