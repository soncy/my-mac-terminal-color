


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:/usr/local/sbin:/usr/local/bin:${PATH}"
export PATH

if brew list | grep coreutils > /dev/null ; then
	PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
	alias ls='ls --show-control-chars --color=auto'
	eval `gdircolors -b $HOME/.dir_colors`
fi

alias ll='ls -l'

# for color
export CLICOLOR=1
# \h:\W \u\$
export PS1='\[\033[00;34m\]\u\[\e[00;32m\]@\[\e[00;33m\]\h\[\033[00;31m\] \W\$\[\033[00m\] '
# grep
alias grep='grep --color=always'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
