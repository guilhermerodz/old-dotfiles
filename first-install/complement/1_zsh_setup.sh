#!/bin/zsh

#set -x
set -e

# -----------------------------------------
# Source and test ZSH environment variables
# -----------------------------------------

# Create .zshrc from Oh My Zsh template if needed
[ ! -f $HOME/.zshrc ] && cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc

# Source .zshrc to refresh environment variables
set +e
source $HOME/.zshrc
set -e

if [[ -z "${ZSH_CUSTOM}" ]]; then
  echo 'ZSH_CUSTOM is undefined. Stopping...'
  exit
fi

# -----------------------------------------
# Customize Zsh (addons and themes)
# -----------------------------------------

# Change Zsh Theme
if ! [ -d "$ZSH_CUSTOM/themes/spaceship-prompt" ]; then
  sudo git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
  sudo ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 

  # Update theme variable in .zshrc
  sed -i 's/ZSH_THEME="robbyrussel"/ZSH_THEME="spaceship"/' $HOME/.zshrc
fi

# Zinit
if ! [ -d "$HOME/.zinit" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
fi

# -----------------------------------------
# Make .zshrc append sourcefile
# -----------------------------------------

if ! grep -F "[ -f .zshrc.sourcefile ] && source .zshrc.sourcefile # Load my personal configuration" $HOME/.zshrc; then
  echo "\n[ -f .zshrc.sourcefile ] && source .zshrc.sourcefile # Load my personal configuration" | tee -a $HOME/.zshrc
fi

# -----------------------------------------
# Source .zshrc to refresh env variables
# -----------------------------------------

set +e
source $HOME/.zshrc
set -e

# -----------------------------------------

# Call the next script part (keep in Zsh)
case $0 in
  /*) CURRENT_SCRIPT_FILENAME=$0;;
   *) CURRENT_SCRIPT_FILENAME=$PWD/$0:;;
esac

CURRENT_SCRIPT_DIR=$(dirname $CURRENT_SCRIPT_FILENAME)

source $CURRENT_SCRIPT_DIR/2_dev_environment.sh
