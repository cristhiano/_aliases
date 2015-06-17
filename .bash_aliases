#!/bin/bash

# reload bash
alias rel='cp -f ~/_aliases/.bash_aliases ~/.bash_aliases && gnome-terminal && exit'

###
# apt-get
#
#alias apt=apt # native?

# update && install
alias update='sudo apt update '
alias install='sudo apt install -y '
alias upinst='sudo apt update && sudo apt install -y '

###
# docker
#
alias dkr='sudo docker'

# images
alias img='dkr images'
alias rmi='dkr rmi $(img -f dangling=true -q)'

# containers
alias lxc='dkr ps -a'
alias rmc='dkr rm $(lxc -a -q)'

# build and run
bar() {
  dkr build -t "$@" . && dkr run -it --rm "$@" /bin/bash
}
alias bar=bar

# fig (docker-compose)
alias fig='sudo docker-compose'

# machine
alias machine='sudo docker-machine'

###
# web
#

# firefox search
ff() {
  firefox -new-window --search "$@"
}
alias ff=ff

# registry.hub.docker.com
registry() {
  firefox -new-window "https://registry.hub.docker.com/_/$@/"
}
alias registry=registry

# github.com
github() {
  firefox -new-window "https://github.com/$@/"
}
alias github=github

alias bit='google-chrome https://bitbucket.org/cristhiano'

# yahoo! webmail .br
alias y-mail='google-chrome mail.yahoo.com.br'

###
# system
#

alias google-chrome='google-chrome --new-window '

# duplicate terminal
alias d='gnome-terminal'

alias df='df -h'

# close terminal
alias x='exit'

# disk analyser
alias disk='sudo baobab /'

# workspace grid
wrkspc_grid_sqrt() {
  dconf write /org/compiz/profiles/unity/plugins/core/hsize "$@"
  dconf write /org/compiz/profiles/unity/plugins/core/vsize "$@"
}
alias wrkspc-grid-sqrt=wrkspc_grid_sqrt

# localhost
for port in 3000 8000 8080;
do
  alias "l:$port"="firefox -new-window localhost:$port"
done
