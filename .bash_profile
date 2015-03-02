export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

source /usr/local/bin/virtualenvwrapper.sh

alias ls='ls -G'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\e[00;30m\]\u:\[\e[0m\]\[\e[00;34m\]\w\[\e[0m\]\[\e[00;37m\]\n\e[0;35m\]$(parse_git_branch)\e[m \\$ \[\e[0m\]"
