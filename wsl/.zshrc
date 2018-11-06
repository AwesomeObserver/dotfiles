# Path to your oh-my-zsh installation.
export ZSH="/home/awesome_observer/.oh-my-zsh"

export TERM="xterm-256color" 

# Zsh theme
ZSH_THEME="powerlevel9k/powerlevel9k"

# Dir colors
POWERLEVEL9K_DIR_HOME_BACKGROUND='236'
POWERLEVEL9K_DIR_HOME_FOREGROUND='211'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='236'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='211'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='236'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='211'
POWERLEVEL9K_CUSTOM_USER_BACKGROUND='236'
POWERLEVEL9K_CUSTOM_USER_FOREGROUND='211'

# Prompt elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_user dir vcs)

# Prompt func
POWERLEVEL9K_DISABLE_RPROMPT=true
WERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_CUSTOM_USER="sysUser"

# Command execution time stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

sysUser() {
    echo -n "$(whoami)"
}

allColors() {
  for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
}

# Clear console
alias cls="clear"
# All inst pkg
alias pla="sudo apt list --installed"
# All instl pkg with grep
alias pl$1="sudo dpkg -l | grep -i $1"
# Cd ..
alias ..="cd .."
# Print all colors
alias clr="allColors"
# All docker containers list
alias dps="docker ps"
# All docker images list
alias dil="docker images ls"
alias drf$1="docker rmi -f $1"
# All GPG keys
alias gpgl="gpg --list-keys"
# Delete GPG public key
alias gpgdk$1="gpg --delete-key "$1""
# GPG fingerprint
alias gpgfgp="gpg --fingerprint"
# Get gpg key long format
alias gpg="gpgll --list-secret-keys --keyid-format LONG"
alias gpgpk$1="gpg --armor --export $1"
alias gitcl="git config --list"
