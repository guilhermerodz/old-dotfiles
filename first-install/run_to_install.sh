#!/bin/bash

set -e
#set -x

# -----------------------------------------
# Setup new system defaults
# -----------------------------------------

# Set CPU mode to performance (recommended for PCs)
sudo apt install -y cpufrequtils
echo 'GOVERNOR="performance"' | sudo tee /etc/default/cpufrequtils
sudo systemctl disable ondemand

# -----------------------------------------
# Setup mandatory APT repositories
# -----------------------------------------

# Github CLI
if ! command -v gh &> /dev/null ; then
    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
    sudo apt-add-repository https://cli.github.com/packages
fi

# This line is mandatory right after adding repositories
sudo apt update

# -----------------------------------------
# First installs
# -----------------------------------------

# Zsh, Git and Github CLI
sudo apt install -y zsh git gh

# Oh My Zsh
if ! [ -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

  chsh -s $(which zsh)
fi

# -----------------------------------------

# Call the next script part (Zsh is mandatory)
case $0 in
  /*) CURRENT_SCRIPT_FILENAME=$0;;
   *) CURRENT_SCRIPT_FILENAME=$PWD/$0:;;
esac

CURRENT_SCRIPT_DIR=$(dirname $CURRENT_SCRIPT_FILENAME)

/bin/zsh $CURRENT_SCRIPT_DIR/complement/1_zsh_setup.sh
