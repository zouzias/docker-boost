FROM boost-base:latest

MAINTAINER Anastasios Zouzias <my_last_name@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /usr/include/

# We pass the boost version argument as argument
ARG BOOST_VERSION
ARG BOOST_VERSION_
ENV BOOST_VERSION=${BOOST_VERSION}
ENV BOOST_VERSION_=${BOOST_VERSION_}
ENV BOOST_ROOT=/usr/include/boost

RUN wget --no-check-certificate --max-redirect 3 https://sourceforge.net/projects/boost/files/boost/${BOOST_VERSION}/boost_${BOOST_VERSION_}.tar.gz


RUN mkdir -p /usr/include/boost && tar zxf boost_${BOOST_VERSION_}.tar.gz -C /usr/include/boost --strip-components=1

RUN echo ${BOOST_ROOT}
ENTRYPOINT /bin/bash
