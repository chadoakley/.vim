#!/bin/bash

DIR=$( cd $( dirname "$0" ) && pwd )

for file in vimrc gvimrc; do
  if [[ ( -e ~/.$file ) || ( -h ~/.$file ) ]]; then
    mv ~/.$file ~/.$file.backup
  fi
  ln -s $DIR/$file ~/.$file
done
