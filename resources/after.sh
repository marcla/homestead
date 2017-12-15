#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

awk '{ sub("\r$", ""); print }' /tmp/extrasPath/gitconfig > /home/vagrant/.gitconfig
awk '{ sub("\r$", ""); print }' /tmp/extrasPath/gitignore > /home/vagrant/.gitignore
awk '{ sub("\r$", ""); print }' /tmp/extrasPath/cobalt2.zsh-theme > /home/vagrant/.oh-my-zsh/themes/cobalt2.zsh-theme
#awk '{ sub("\r$", ""); print }' /tmp/extrasPath/vimrc > /home/vagrant/.vimrc

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="cobalt2"/g' /home/vagrant/.zshrc
sed -i '/# Import custom dotfiles ~~~/,+1d' /home/vagrant/.profile
printf "\n# Import custom dotfiles ~~~\nsource .extra" >> /home/vagrant/.profile
