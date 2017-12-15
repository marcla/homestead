#!/usr/bin/env bash

for file in /home/vagrant/.{gitconfig,gitignore,bash_prompt,vimrc}; do
  if [ -r "$file" ] && [ -f "$file" ]
  then
    rm "$file"
  fi
done;
unset file;
