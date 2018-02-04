FROM armhf/ubuntu:xenial

RUN apt-get update && apt-get install -y git zsh vim tmux \
    && apt-get -q clean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone --recursive https://github.com/vkoop/dotfiles.git ~/.dotfiles && cd ~/.dotfiles && ./setup/setup.sh

CMD ["zsh"]