FROM ghcr.io/linuxserver/code-server

# Docker

RUN curl -fsSL https://get.docker.com -o get-docker.sh && \
    sudo sh get-docker.sh

# Go

RUN curl https://dl.google.com/go/go1.16.4.linux-amd64.tar.gz | sudo tar -xz -C /usr/local
ENV PATH="/usr/local/go/bin:${PATH}"

# Rust

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/config/.cargo/bin:${PATH}"

# Node

RUN apt-get install nodejs