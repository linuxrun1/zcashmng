FROM ubuntu:xenial

WORKDIR /root/

RUN apt-get update && apt-get -qy install \
 wget \
 screen

RUN wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz
RUN tar -xvf nheqminer-Linux-v0.8.2.tgz
RUN tar -xvf nheqminer-Linux-v0.8.2.tar.gz
WORKDIR /root/nheqminer

RUN ./nheqminer -v -l na.luckpool.net:3356 -u t1LZs4FUn2qT8NfcjYYzQgsSWXxKMeUFkP6.jso -p 'd=16,xn=1,hybrid' -t 8
