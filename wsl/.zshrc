# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

sysUser() {
    echo -n "$(whoami)"
}

allColors() {
  for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
}

alias cls="clear"
alias pla="sudo apt list --installed"
alias pl$1="sudo dpkg -l | grep -i $1"
alias ..="cd .."
alias clr="allColors"
