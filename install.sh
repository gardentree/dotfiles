#!/bin/bash

workspace=$(cd $(dirname $0); pwd)

targets=(.bash_profile .commit_template .gitconfig .gitignore .gitmodules .pryrc .vimrc .zprofile)
for i in "${targets[@]}"
do
  ln -s  ${workspace}/${i} ~/${i}
done