#!/bin/sh

echo ">>> setup vim..."
mkdir -p ~/.vim/bundle/
test -e ~/.vimrc || ln -s ~/.vim/vimrc ~/.vimrc

echo ">>> install vundle..."
if [ -d ~/.vim/bundle/vundle ]; then
  (cd ~/.vim/bundle/vundle && git pull origin master)
else
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

echo ">>> install bundles..."
vim +BundleInstall +qall
