#!/bin/zsh

set -e
#set -x

# -----------------------------------------
# Setup programming languages
# -----------------------------------------

# NVM (Node Version Manager)
if ! command -v nvm &> /dev/null ; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh

  set +e
  source $HOME/.zshrc
  set -e
fi

# Node.js
if ! command -v node &> /dev/null ; then
  nvm install 'lts/*'
  nvm use 'lts/*'
  nvm alias default 'lts/*'
fi

# -----------------------------------------
# Setup terminal and Vim
# -----------------------------------------

# Kitty
if ! [ -f "/usr/bin/kitty" ]; then
  sudo apt install kitty -y
  sudo update-alternatives --set x-terminal-emulator usr/bin/kitty
fi

# Neovim
if ! [ -f "/usr/bin/nvim" ]; then
  curl https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage -o nvim
  sudo chmod u+x nvim && sudo mv nvim /usr/bin
fi

# Tmux
if ! [ -f "/usr/bin/tmux" ]; then
  sudo apt install tmux -y
fi

# -----------------------------------------
# Decide whether or not to apply dotfiles.
# Note: exits the program if false.
# -----------------------------------------

echo "\n\nDo you want to apply your dotfiles from this repo (y/n)?\n\n"
read APPLY_DOTFILES
if [[ $APPLY_DOTFILES == y* ]]; then
  echo "Proceeding to apply your dotfiles..."

  # Store this Git repository root directory inside a variable
  DOTFILES_DIR=$(git rev-parse --show-toplevel)

  # Copy files inside $DOTFILES_DIR to the $HOME
  # Note: it does not copy subfolders
  # Note: it prompts before overriding the files
  find $DOTFILES_DIR -maxdepth 1 ! -name 'LICENSE' ! -name '.gitignore' -type f -exec cp -i -t $HOME {} +
else
  echo "The dotfiles will not be applied. Skipping."
fi

# -----------------------------------------
# Cool post installation message
# -----------------------------------------

echo "--------------------------------------\n"
echo "Instalation complete."
echo "You can now enjoy your preferred apps:\n"
echo "> sudo snap install discord spotify insomnia dbeaver-ce\n"
echo "Please note that your sublevel dotfiles are still not applied for security reasons."
echo "You can manually copy your dotfiles, for example:\n"
echo "> cp -r .config/nvim ~/.config/nvim\n"