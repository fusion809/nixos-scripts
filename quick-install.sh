#!/bin/bash

# SCR
SCR="$HOME/GitHub/mine/scripts"
NS="$SCR/nixos-scripts"
OZ="$HOME/.oh-my-zsh"
ZT="$SCR/zsh-theme"

FUS_URL="https://github.com/fusion809"
ZSH_URL="https://github.com/zsh-users"

# Create GitHub directory
if ! [[ -d $SCR ]]; then
  mkdir -p $SCR
fi

# Get openssh, if not pre-installed and Zsh
sudo nix-env -i openssh zsh git

# Clone nixos-scripts repo
if ! [[ -d $NS ]]; then
  git clone $FUS_URL/nixos-scripts $NS
  # Copy across
  cp -a $NS/{Shell,.bashrc,.zshrc} $HOME/
  sudo cp -a $NS/root/{Shell,.bashrc,.zshrc} /root/
else
  cd $NS
  git pull origin master
  cd -
  # Copy across
  cp -a $NS/{Shell,.bashrc,.zshrc} $HOME/
  sudo cp -a $NS/root/{Shell,.bashrc,.zshrc} /root/
fi

if ! [[ -d $HOME/.oh-my-zsh ]]; then
  # git clone oh-my-zsh
  git clone https://github.com/robbyrussell/oh-my-zsh $OZ
else
  cd $OZ
  git pull origin master
  cd -
fi

if ! [[ -d $ZT ]]; then
# Get my self-made zsh-themes
  git clone https://github.com/fusion809/zsh-theme $ZT
  cp -a $ZT/*.zsh-theme $OZ/themes/
else
  cd $HOME/GitHub/{,mine/}zsh-theme
  git pull origin master
  cd -
  cp -a $HOME/GitHub/{,mine/}zsh-theme/*.zsh-theme $OZ/themes/
fi

if ! [[ -d $OZ/plugins/zsh-syntax-highlighting ]]; then
  # Get zsh-syntax-highlighting
  git clone $ZSH_URL/zsh-syntax-highlighting $OZ/plugins/zsh-syntax-highlighting
fi

if ! [[ -d $OZ/plugins/zsh-history-substring-search ]]; then
  git clone $ZSH_URL/zsh-history-substring-search $OZ/plugins/zsh-history-substring-search
fi

# Change default login shell to Zsh
chsh -s /bin/zsh
sudo chsh -s /bin/zsh
/bin/zsh
