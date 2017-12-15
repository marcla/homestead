#!/usr/bin/env bash

if [ ! -f /etc/bash_completion ]; then
  echo "Install bash_autocomplete"
  
  sudo apt-get -y install bash-completion
fi