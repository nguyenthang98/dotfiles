export ZSH="/home/thangnguyen/.oh-my-zsh"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi

ZSH_THEME="robbyrussell"
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh
