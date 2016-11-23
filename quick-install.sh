#!/bin/bash
# Create GitHub directory
if ! [[ -d $HOME/GitHub/mine/scripts ]]; then
  mkdir -p $HOME/GitHub/mine/scripts
fi

# Get openssh, if not pre-installed and Zsh
sudo apt-get install -y openssh-server zsh git

# Clone debian-scripts repo
if ! [[ -d $HOME/GitHub/mine/scripts/debian-scripts ]]; then
  git clone https://github.com/fusion809/debian-scripts $HOME/GitHub/mine/scripts/debian-scripts
  # Copy across
  cp -a $HOME/GitHub/mine/scripts/debian-scripts/{Shell,.bashrc,.zshrc} $HOME/
  sudo cp -a $HOME/GitHub/mine/scripts/debian-scripts/root/{Shell,.bashrc,.zshrc} /root/
elif [[ -d $HOME/GitHub/debian-scripts ]]; then
  cd $HOME/GitHub/debian-scripts
  git pull origin master
  cd -
  # Copy across
  cp -a $HOME/GitHub/debian-scripts/{Shell,.bashrc,.zshrc} $HOME/
  sudo cp -a $HOME/GitHub/debian-scripts/root/{Shell,.bashrc,.zshrc} /root/
elif [[ -d $HOME/GitHub/mine/scripts/debian-scripts ]]; then
  cd $HOME/GitHub/mine/scripts/debian-scripts
  git pull origin master
  cd -
  # Copy across
  cp -a $HOME/GitHub/mine/scripts/debian-scripts/{Shell,.bashrc,.zshrc} $HOME/
  sudo cp -a $HOME/GitHub/mine/scripts/debian-scripts/root/{Shell,.bashrc,.zshrc} /root/
fi

if ! [[ -d $HOME/.oh-my-zsh ]]; then
  # git clone oh-my-zsh
  git clone https://github.com/robbyrussell/oh-my-zsh $HOME/.oh-my-zsh
else
  cd $HOME/.oh-my-zsh
  git pull origin master
  cd -
fi

if ! [[ -d $HOME/GitHub/mine/scripts/zsh-theme ]]; then
# Get my self-made zsh-themes
  git clone https://github.com/fusion809/zsh-theme $HOME/GitHub/mine/scripts/zsh-theme
  cp -a $HOME/GitHub/mine/scripts/zsh-theme/*.zsh-theme $HOME/.oh-my-zsh/themes/
else
  cd $HOME/GitHub/{,mine/}zsh-theme
  git pull origin master
  cd -
  cp -a $HOME/GitHub/{,mine/}zsh-theme/*.zsh-theme $HOME/.oh-my-zsh/themes/
fi

if ! [[ -d $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting ]]; then
  # Get zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
fi

if ! [[ -d $HOME/.oh-my-zsh/plugins/zsh-history-substring-search ]]; then
  git clone https://github.com/zsh-users/zsh-history-substring-search $HOME/.oh-my-zsh/plugins/zsh-history-substring-search
fi

# Change default login shell to Zsh
chsh -s /bin/zsh
sudo chsh -s /bin/zsh
/bin/zsh
