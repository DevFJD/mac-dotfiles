export ZSH="/Users/devfjd/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# GO
export GOPATH=$HOME/Developer/go
export PATH=$PATH:$GOPATH/bin

# Flutter
# export PATH="$PATH:$HOME/Developer/mobile/flutter/bin"

eval "$(starship init zsh)"
