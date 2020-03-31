FROM ubuntu:18.04

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install git-core curl build-essential openssl libssl-dev python && \

RUN git clone https://github.com/nodejs/node.git && \
    cd node && \
    git checkout v8.12.0 && \
    ./configure && \
    make && \
    make install

RUN curl -L https://npmjs.org/install.sh | sh
