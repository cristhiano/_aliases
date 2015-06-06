# reload bash
alias rel='cp -f ~/_aliases/.bash_aliases ~/.bash_aliases && gnome-terminal && exit'

###
# apt-get
#
#alias apt=apt

# update && install
alias update='sudo apt update '
alias install='sudo apt install -y '
alias upinst='sudo apt update && sudo apt install -y '

###
# docker
#
alias dkr='sudo docker'

# containers
alias lxc='dkr ps -a'
alias rmc='dkr rm $(lxc -a -q)'

# images
alias img='dkr images'
alias rmi='dkr rmi $(img -f dangling=true -q)'

# build and run
bar() {
  sudo docker build -t "$@" . && sudo docker -it --rm "$@"
}
alias bar=bar

###
# fig (docker-compose)
#
alias fig='sudo docker-compose'

###
# web
#

# registry.hub.docker.com
registry() {
  firefox "https://registry.hub.docker.com/_/$@/"
}
alias registry=registry

# github.com
github() {
  firefox -new-window "https://github.com/$@/"
}
alias github=github

# firefox google search
alias ff='firefox --search '

###
# system
#

# duplicate terminal
alias d='gnome-terminal'

alias df='df -h'

# close terminal
alias x='exit'

# disk analyser
alias disk='sudo baobab /'
