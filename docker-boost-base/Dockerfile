FROM ubuntu:xenial

MAINTAINER Anastasios Zouzias <my_last_name@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update && apt-get install -q -y software-properties-common python-software-properties
RUN add-apt-repository ppa:ubuntu-toolchain-r/test -y
RUN apt-get -qq update && apt-get install -qy g++-6 gcc git wget

RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 90
