#!/usr/bin/env bash

# Keep this up-to-date
curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -

# Install stuff
sudo apt-get install -y curl tmux git build-essential vim nodejs

# Hostname
echo "nodebox" | sudo tee /etc/hostname

# Coloured prompt!
sed -i 's/#force_color_prompt/force_color_prompt/g' ~/.bashrc

# Eliminate the need to install global packages as root
mkdir ~/npm-global
npm config set prefix '~/npm-global'
echo 'export PATH=~/npm-global/bin:$PATH' >> ~/.profile
source ~/.profile

mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/mxw/vim-jsx.git
git clone https://github.com/pangloss/vim-javascript.git
git clone git://github.com/wavded/vim-stylus.git