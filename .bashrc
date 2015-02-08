# .bashrc

# User specific environment and startup programs

# Java
export JAVA_HOME=/usr/java/default

# Gradle
export GRADLE_HOME=/usr/local/opt/gradle/current
# Apache maven
export M2_HOME=/usr/local/opt/apache-maven/current

PATH=$PATH:$HOME/.local/bin:$HOME/bin

# System path
PATH=$PATH:$GRADLE_HOME/bin:$M2_HOME/bin

export PATH




######################################################
# Aliases
######################################################

alias ll='ls -la'
alias gradle+='gradle -Dpython=python2.5 -Dpython2.7=python'

######################################################
######################################################
######################################################

# Fix django ValueError: unknown locale: UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# make dir and change dir in one step
mkcd() { mkdir -p "$@" && cd $_; }


source .git-completion.sh
source .git-prompt.sh
# export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
