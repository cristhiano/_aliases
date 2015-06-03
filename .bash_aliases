#!/bin/bash
alias rel='cp -f .bash_aliases ~/.bash_aliases && gnome-terminal && exit'

docker() {
  if [ $1 == "bar" ]; then
    $name = dirname -- pwd
    if [ pwd -ne $HOME ]; then
      if [ -f / .bash_aliases ]; then
        sudo docker build -t $name . && sudo dkr run -it --rm $name /bin/bash
      fi
    fi
  fi
}
alias dkr=docker

alias fig='sudo docker-compose'

alias ff='firefox --search '
alias x='exit'
