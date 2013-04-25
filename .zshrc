# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dieter"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias qzz='noglob qzz'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git svn git osx ruby ssh)

source $ZSH/oh-my-zsh.sh

# Get the aliases and functions
if [ -f ~/.pubrc ]; then
    . ~/.pubrc
fi

if brew list | grep coreutils > /dev/null ; then
    PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
    alias ls='ls --show-control-chars --color=auto'
    eval `gdircolors -b $HOME/.dir_colors`
fi

# Customize to your needs...
export PATH=$PATH:/Users/soncy/.rvm/gems/ruby-1.9.2-p320/bin:/Users/soncy/.rvm/gems/ruby-1.9.2-p320@global/bin:/Users/soncy/.rvm/rubies/ruby-1.9.2-p320/bin:/Users/soncy/.rvm/bin:/usr/local/opt/coreutils/libexec/gnubin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin

# SSH的时候补全只读取known_hosts
zstyle -e ':completion::*:*:*:hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'