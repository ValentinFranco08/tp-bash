FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    vim \
    nano

WORKDIR /app

CMD ["/bin/bash"]
