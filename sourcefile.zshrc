# ----------------------------------------
# Plugin Manager - Zinit
# ----------------------------------------

zinit light denysdovhan/spaceship-prompt

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma/fast-syntax-highlighting

# ----------------------------------------
# ZSH - Appearance & Theme Options
# ----------------------------------------

# Avoid printing % character at first line
unsetopt PROMPT_SP

SPACESHIP_PROMPT_ORDER=(
  user          
  dir
  host
  git
  hg
  exec_time
  line_sep
  vi_mode
  jobs
  exit_code
  char
)

SPACESHIP_USER_SHOW="always"
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_GIT_STATUS_SHOW=false

# ----------------------------------------
# Personal Dotfiles Manager
# ----------------------------------------

alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias dfiles="dotfiles"
alias dfl="dotfiles"
