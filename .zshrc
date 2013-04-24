# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="eddie-yellow-thunder"
# ZSH_THEME="wedisagree"
# ZSH_THEME="cloud"
#
#ZSH_THEME="kphoen"
#ZSH_THEME="powerline"
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git, github, osx, brew, tmux)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Terminal Color 設定
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad


#sets up proper alias commands when called
alias ls='ls -G'
alias ll='ls -hl'

export PATH=/Users/anggao/Applications/sbt/bin:$PATH
export PATH=/Users/anggao/Applications/mongodb/bin:$PATH

alias emacs='open -a /Applications/Emacs.app $1'

export PATH="$PATH:/usr/local/smlnj-110.75/bin"

alias fedora='ssh auser@10.211.55.7'
