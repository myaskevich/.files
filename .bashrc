
# Autoload my ssh keys
# for key in ~/.ssh/*.pub
# do
#     echo "Adding key ${key}"
#     ssh-add "${key}"
# done

# Gradle
export GRADLE_HOME=/usr/local/opt/gradle-1.7

# Apache maven
export M2_HOME=/usr/local/opt/apache-maven-3.1.0
export M2=$M2_HOME/bin

# Fix django ValueError: unknown locale: UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# System path
PATH=$PATH:$GRADLE_HOME/bin:$M2

# make dir and change dir in one step
mkcd() { mkdir -p "$@" && cd $_; }


source .git-completion.sh
source .git-prompt.sh
# export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
