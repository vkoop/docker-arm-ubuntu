FROM armhf/ubuntu:xenial

RUN apt-get update && apt-get install -y git zsh vim tmux

RUN git clone --recursive https://github.com/vkoop/dotfiles.git ~/.dotfiles && cd ~/.dotfiles && ./setup/setup.sh

CMD ["zsh"]

