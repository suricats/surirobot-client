FROM ubuntu:16.04
LABEL maintainer="tberdy@hotmail.fr"

RUN apt-get -y update
RUN apt-get install -y --fix-missing \
    build-essential \
    cmake \
    git \
    wget \
    curl \
    pkg-config \
    software-properties-common \
    && apt-get clean && rm -rf /tmp/* /var/tmp/*

COPY ./../../src/client-qt /root/client-qt
RUN cd /root/client-qt && \
    make

CMD cd /root/client-qt && \
    ./build/client
