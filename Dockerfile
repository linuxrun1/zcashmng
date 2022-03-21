FROM ubuntu:xenial

WORKDIR /root/

RUN apt-get update && apt-get -qy install \
 wget \
 screen

RUN wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz
RUN tar -xvf nheqminer-Linux-v0.8.2.tgz
RUN tar -xvf nheqminer-Linux-v0.8.2.tar.gz
WORKDIR /root/nheqminer

RUN ./nheqminer -v -l stratum+tcp://equihash.usa-east.nicehash.com:3357 -u 3QyQSRvYEt7gxxc4wg6HnTCiUy2NubiJqM.cgh -p x -t 8
