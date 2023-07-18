#!/bin/bash

workspace=$(cd $(dirname $0); pwd)

targets=(.commit_template .gitconfig .gitignore .gitmodules .pryrc .vimrc .xvimrc)
for i in "${targets[@]}"
do
  ln -s  ${workspace}/${i} ~/${i}
done
